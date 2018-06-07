class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    
  end

  def show
    id = params[:id]
    @question =  Question.find(id)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
