class Album < ApplicationRecord
    belongs_to :user

    has_many :photos

    validates :name, presence: true, length: {minimum: 3, maximum: 50}
    validates :description, presence: true, length: {minimum: 10, maximum: 300}
    validates :user_id, presence: true
end
