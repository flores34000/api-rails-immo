class Property < ApplicationRecord

#    has_many_attached :images
    belongs_to :user

    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true

    def images_url
        if images.attached?
            images.blob.service_url
        end
    end

end