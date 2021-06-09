class Api::UsersController < Api::BaseController
    before_action :find_user, only: [:show, :update]
    before_action :authenticate_user!, except: [:show, :index]   

    def index
        @users = User.all
        render json: @users
    end

    def show
        render_jsonapi_response(@user)
    end

    def update
        if @user.update(user_params)
          render json: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
    end

    def destroy
    if @user
        @user.destroy
        # Add success data
        render json: success_data, status: 200
    end
    end
    
    private

    def find_user
        @user = User.find(params[:id])
    end
    def success_data
        {
            status: "200",
            message: "Destroyed successfully!"
        }
    end

    def user_params
        params.require(:user).permit(:email,:password)
    end
end
