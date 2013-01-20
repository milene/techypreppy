class AttemptsController < ApplicationController

	def index
		attempts = Attempt.all
		render :json => attempts
	end

	def new
		@attempt = Attempt.new
	end

	def create
		# Creates a new Attempt record once the client-side is sone. 
		# Takes into params the answer given, the difficulty_rating,
		# the time taken to answer, correct or true, the question id and user id ??
		@attempt = Attempt.new(:answer => params[:answer], :difficulty_rating => params[:difficulty_rating], :correct => params[:correct], :attempt_ms => params[:attempt_ms],
:attempt_number => params[:attempt_number])

    	respond_to do |format|
      		if @attempt.save
        		format.html { redirect_to @attempt }
        		format.json { render json: @attempt, status: :created }
      		else
       			format.html { render action: "new" }
        		format.json { render json: @attempt.errors, status: :unprocessable_entity }
      		end
    	end
  	end

  	def show
		@attempt = Attempt.find(params[:id])
		respond_to do |format|
      		format.json { render json: @attempt }
    	end
	end


end
