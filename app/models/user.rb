class User < ApplicationRecord
    has_many :videos

    #returns an array of **subs for** the user instance
    has_many :subscriptions, foreign_key: :subscribed_id, class_name: "Sub", dependent: :destroy
    #returns an array of **users** for the user instance
    has_many :subscribers, through: :subscriptions, source: :subscriber
    #returns an array of **subs a user gave** to somebody else
    has_many :given_subs, foreign_key: :subscriber_id, class_name: "Sub", dependent: :destroy
    #returns an array of **other users** this user instance is subscribed to
    has_many :subscribed_to, through: :given_subs, source: :subscribed

    # validates :username, uniqueness: true
    # validates :bio, length: { maximum: 250}
    
    has_secure_password
    # validates :password_digest, length: { in: 6..20 }
    # validates :password_digest, confirmation: true,
    #     unless: Proc.new { |a| a.password_digest.blank? }

end
