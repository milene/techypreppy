class QuestionsController < ApplicationController

	def new
		@question = Question.new
	end

	def index
		questions = Question.all
		render :json => questions
	end

	def create
		@question = Question.new(:answer => params[:answer], :prompt => params[:prompt], :difficulty => params[:difficulty])

    	respond_to do |format|
      		if @question.save
        		format.html { redirect_to @question, notice: 'Question was successfully created.' }
        		format.json { render json: @question, status: :created }
      		else
       			format.html { render action: "new" }
        		format.json { render json: @question.errors, status: :unprocessable_entity }
      		end
    	end
  	end

	def show
		@question = Question.find(params[:id])
		respond_to do |format|
      		format.json { render json: @question }
    	end
	end

	def edit
		@question = Question.find(params["answer"], params["prompt"], params["difficulty"])
	end

	def destroy
		@question = Question.find(params["answer"], params["prompt"], params["difficulty"])
		@question.destroy
	end

end
