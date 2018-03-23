
# Question controller file
# Contains actions like: show, create, edit, destroy and update question.

class QuestionsController < ApplicationController
  
  before_action :set_question, only: [:show,:edit,:update,:destroy, :upvote, :downvote]
  
  def index
    @questions = Question.paginate(page: params[:page], per_page: 5)
  end

  def show
  end
  
  def new
    if user_signed_in? == false
      flash[:notice] = "You must be signed in to ask a question."
      redirect_to home_path
    end
    @question = Question.new
  end
  
  def edit
    @question = Question.find(params[:id])
    unless user_signed_in? && current_user.id == @question.user.id
      flash[:notice] = "You must own the question to modify it."
      redirect_to home_path
    end
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
    @question.destroy
    redirect_to questions_path
  end

  def upvote
    @question.upvote_from current_user # a user cannot vote more than one time
    redirect_to request.referrer
  end
  def downvote
    @question.downvote_from current_user
    if(question_rejected?)
        @question.destroy
        redirect_to request.referrer
    else
        redirect_to request.referrer
    end
  end
  # the objects needs these parameters in order to be saved to the DB
  private
    def set_question
      @question = Question.find(params[:id])
    end
    
    def question_rejected?
      @total = @question.cached_votes_total
      if(@total > 10 && @question.cached_votes_down > 0.6 * @total)
          return true
      else
          return false
      end
          
  end
    def question_params
      params.require(:question).permit(:title, :text)
    end
end


