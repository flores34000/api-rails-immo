class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :properties
  has_one_attached :avatar

  validates :email, presence: true
  validates :password, presence: true
  devise :database_authenticatable, :registerable,
        :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

	validates :avatar, attached: true, dimension: { width: { min: 800, max: 2400 } },
		content_type: [:png, :jpg, :jpeg], size: { less_than: 100.kilobytes , message: 'is not given between size' }
end
