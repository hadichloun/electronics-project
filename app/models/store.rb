class Store < ApplicationRecord
    has_many :products
    has_many :store_products through: products
end
