class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end
  
  def new
  end
  
  def create
    @question = Question.new(question_params) 
 
    @question.save
    redirect_to questions_path
  end
  
  private
    def question_params
      params.require(:question).permit(:title, :text)
    end

  def edit
    @question = Question.find{params[:id]}
  end

  def update
  end

  def delete
  end
end
