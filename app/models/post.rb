class Post < ApplicationRecord
    has_many :hearts
    has_many :users, through: :hearts
    has_one_attached :avatar
    has_many :comments
end
