class Video < ApplicationRecord
    has_one_attached :clip
    belongs_to :user
    has_one_attached :thumbnail
end
