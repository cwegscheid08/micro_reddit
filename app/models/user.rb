class User < ApplicationRecord

	validates :name, presence: true, length: { maximum: 20 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: true,
					format: { with: VALID_EMAIL_REGEX }

	has_many :posts
	has_many :comments
end
