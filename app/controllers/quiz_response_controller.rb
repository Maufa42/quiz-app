class QuizResponseController < ApplicationController

  def new
    @questionnaire = Questionnaire.find(params[:id])
    @QuizResponse = QuizResponse.new
  end

  def create
    debugger
    @QuizResponse = QuizResponse.create(response_params)
    if response.save
      redirect_to questionnaires_path
    end
  end

  private
  def response_params
    params.require(:quiz_responses).permit(:id,:name)
  end
end
