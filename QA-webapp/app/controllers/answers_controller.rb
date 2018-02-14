class AnswersController < ApplicationController
    def create
        @question. Question.find(params[:id])
        @answer = @question.answers.create(answer.params)
        redirect_to question_path(@question)
    end

    def destroy
        @question = Question.find(params[:article_id])
        @answer = @question.comments.find(params[:id])
        @answer.destroy
        redirect_to question_path(@question)
    end

    private
    def answer.params
        params.require(:answer).permit(:user, :body)
    end
end
