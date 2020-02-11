class Video < ApplicationRecord
    has_one_attached :clip
    belongs_to :content_creator
    # has_one_attached :thumbnail
end
