class Api::PropertiesController < Api::BaseController
  before_action :set_property, only: [:show, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  before_action :is_owner , only: [:edit, :update, :destroy]


  # GET /properties
  def index
    @properties = Property.all

    render json: @properties.to_json(include: [:user])
  end

  # GET /properties/1
  def show
    render json: @property.to_json(include: [:user])
  end

  # POST /properties
  def create
    @user = current_user

    @property = Property.new(
      longitude: property_params[:longitude],
      latitude: property_params[:latitude],
      description: property_params[:description],
      name: property_params[:name],
      price: property_params[:price],
      user_id: @user.id,
      )

      add_image = @property.images.attach(property_params[:images])

    if @property.save
      if add_image.present? && !!@property
        render json: @property.as_json(root: false, methods: :images_url).except('updated_at')
      end
      render json: @property, status: :created
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /properties/1
  def update
    if @property.update(property_params)
      render json: @property
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  # DELETE /properties/1
  def destroy
    @property.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:longitude, :latitude, :description, :name, :price, :user_id, :images)
    end

    def is_owner 
      @property = Property.find(params[:id])
      unless @property.user == current_user
        render json: nil, status: :forbidden
        return
      end
    end
end
