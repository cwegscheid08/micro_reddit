class Post < ApplicationRecord

	validates :name, presence: true, length: { maximum: 20 }
	validates :body, presence: true, length: { minimum: 5, maximum: 1000 }

	belongs_to :user
end
