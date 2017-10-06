class Photo < ApplicationRecord
    belongs_to :album

    mount_uploader :img, ImageUploader

    validates :img, presence: true
    validates :album_id, presence: true
end
