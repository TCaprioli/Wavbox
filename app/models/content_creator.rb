class ContentCreator < ApplicationRecord
    has_many :videos
    has_many :subs
    has_many :viewers, through: :subs

    validates :profile_name, presence: true
    validates :bio, length: { maximum: 250}
    
    has_secure_password
    validates :password_digest, length: { in: 6..20 }
    validates :password_digest, confirmation: true,
        unless: Proc.new { |a| a.password_digest.blank? }

end
