class Photo < ApplicationRecord
    belongs_to :album

    mount_uploader :img, ImageUploader
end
