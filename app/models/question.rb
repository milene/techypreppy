class Question < ActiveRecord::Base
  belongs_to :user
  attr_accessible :answer, :difficulty, :prompt

  def as_json(options)
  	super(:include => :user)
  end

end
