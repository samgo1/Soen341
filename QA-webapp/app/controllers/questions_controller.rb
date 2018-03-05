class QuestionsController < ApplicationController
  
  def index
    @questions = Question.paginate(page: params[:page], per_page: 5)
  end

  def show
    @question = Question.find(params[:id])
  end
  
  def new
    @question = Question.new
  end
  
  def edit
    @question = Question.find(params[:id])
  end
  
  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    
    if @question.save
      redirect_to questions_path
    else
      render "new"
    end
  end

  def update
    @question = Question.find(params[:id])

        if(@question.update(question_params))
            redirect_to @question
        else 
            render 'edit'
        end
  end
  
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    
    redirect_to questions_path
  end
  
  # the objects needs these parameters in order to be saved to the DB
  # security will be added later
  private
    def question_params
      params.require(:question).permit(:title, :text)
    end
end


