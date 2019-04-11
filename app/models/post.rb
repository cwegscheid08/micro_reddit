class Post < ApplicationRecord
	attr_accessor :name, :body

	def initialize(attributes = {})
		super
		self[:name] = attributes[:name]
		self[:body] = attributes[:body]
		# self[:user_id] = attributes[:foreign_key]
	end
end
