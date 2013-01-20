class Attempt < ActiveRecord::Base

	belongs_to :user
	belongs_to :question
	validates_presence_of :question_id

 	attr_accessible :answer, :attempt_ms, :attempt_number, :correct, :difficulty_rating, :session, :question_id

 	def as_json(options)
  		super(:include => [:user, :question])
  	end

end
