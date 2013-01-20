class Category < ActiveRecord::Base

	has_and_belongs_to_many :questions
  	attr_accessible :name

  	def as_json(options)
  	end

end
