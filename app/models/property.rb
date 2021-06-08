class Property < ApplicationRecord
    belongs_to :user

	has_one_attached :images

    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true

	validates :images, attached: true, limit: { min: 1, max: 3 }, content_type: [:png, :jpg, :jpeg]
end
