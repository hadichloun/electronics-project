class User < ApplicationRecord
    has_secure_password

    has_many :user_products
    has_many :products, through: :user_products 

    validates :username, uniqueness: true
end
