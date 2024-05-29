class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    question.create(question_params)
    redirect_to action: :index
  end

  def show
    @question = question.find(params[:id])

  end

 

  private 
  def question_params
    params.require(:question).permit(:title, :content, :name)
  end

end
