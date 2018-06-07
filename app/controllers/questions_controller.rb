class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    
  end

  def show
    id = params[:id]
    @question =  Question.find(id)
  end

  def new
      @question= Question.new
  end

  def create
    @question = Question.new
    @question.body = params[:question][:body]
    @question.answered = params[:question][:answered]
    @question.save
    redirect_to '/questions'
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.body = params[:question][:body]
    @question.answered = params[:question][:answered]
    @question.save
    redirect_to '/questions'
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to '/questions'
  end
end
