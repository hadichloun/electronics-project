class UserProduct < ApplicationRecord
    belongs_to :user 
    belongs_to :product 

    def recent_purchases
        self.user.map {|user| user.purchase}.sum
    end
end
