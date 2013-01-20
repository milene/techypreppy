class Attempt < ActiveRecord::Base

	belongs_to :user
	belongs_to :question

 	attr_accessible :answer, :attempt_ms, :attempt_number, :correct, :difficulty_rating, :session

 	def as_json(options)
  		super(:include => [:user, :question])
  	end

end
