class User < ApplicationRecord
   
    has_many :user_products
    has_many :products, through: :user_products
    
    has_secure_password
    # validates :email, uniqueness: true
    # validates :name, uniqueness: true
    
    # validates :name, :email, presence: true
    # validates :name, uniqueness: true
    # validates :password, length: {minimum: 6}
end
