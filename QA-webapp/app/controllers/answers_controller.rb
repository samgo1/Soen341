class AnswersController < ApplicationController

    before_action :set_answer, only: [:destroy, :upvote, :downvote]

    def index
        @answers = Answer.all
    end

    def new
        @answer = Answer.new
    end

    def create
        @question = Question.find(params[:question_id])
        @answer = @question.answers.create(answer_params)
        redirect_to question_path(@question)
    end
    def destroy
        @question = Question.find(params[:question_id])
        @answer = @question.answers.find(params[:id])
        @answer.destroy
        redirect_to question_path(@question)
    end

    #upvote_from user
    #downvote_from user

    def upvote
        @answer.upvote_from current_user
        redirect_to request.referrer 
    end

    def downvote 
        @answer.downvote_from current_user
        redirect_to request.referrer
    end

    private

        def set_answer
            @answer = Answer.find(params[:id])
        end

        def answer_params
          params[:answer][:user_id] = current_user.id
          params.require(:answer).permit(:user_id, :body)
        end
end
