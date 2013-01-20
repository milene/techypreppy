class Question < ActiveRecord::Base

  belongs_to :user
  has_many :attempts
  has_and_belongs_to_many :companies
  has_and_belongs_to_many :categories

  attr_accessible :answer, :difficulty, :prompt

  def as_json(options)
  	super(:include => [:user, :attempts])
  end

end
