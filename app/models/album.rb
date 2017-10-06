class Album < ApplicationRecord
    belongs_to :user

    has_many :photos

    mount_uploader :cover, ImageUploader

    validates :name, presence: true, length: {minimum: 3, maximum: 50}
    validates :description, presence: true, length: {minimum: 10, maximum: 300}
    validates :user_id, presence: true
end
