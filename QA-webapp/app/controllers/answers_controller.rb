class AnswersController < ApplicationController
    def create
        @question = Question.find(params[question_id])
        @answer = @question.answers.create(answer_params)
        redirect_to article_path(@question)
    end
    def destroy
        @question = Question.find(params[:question_id])
        @answer = @question.answers.find(params[:id])
        @answer.destroy
        redirect_to article_path(@question)
      nd
    private
        def answer_params
            params.require(:answer).permit(:user, :body)
        end
end
