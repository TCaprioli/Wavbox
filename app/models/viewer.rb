class Viewer < ApplicationRecord
    has_many :subs
    has_many :content_creators, through: :subs

    has_secure_password
    validates :password, length: { in: 6..20 }
    validates :password, confirmation: true,
        unless: Proc.new { |a| a.password.blank? }
end
