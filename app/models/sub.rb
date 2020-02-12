class Sub < ApplicationRecord
    belongs_to :subscribed, foreign_key: :subscription_id, class_name: "User"
    belongs_to :subscriber, foreign_key: :subscriber_id, class_name: "User"
end
