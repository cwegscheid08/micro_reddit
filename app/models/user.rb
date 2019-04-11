class User < ApplicationRecord
	attr_accessor :name, :email

	validates :name, presence: true, length: { maximum: 20 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: true,
					format: { with: VALID_EMAIL_REGEX }

	def initialize(attributes = {})
		super	
		self[:name] = attributes[:name]
		self[:email] = attributes[:email]
	end

	def info
		"#{self[:name]} <#{self[:email]}>"
	end
end
