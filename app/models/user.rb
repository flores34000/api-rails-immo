class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar
  has_many :properties

  validates :email, presence: true
  validates :password, presence: true
  devise :database_authenticatable, :registerable,
        :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  def avatar_url
    if avatar.attached?
      avatar.blob.service_url
    end
  end

end
