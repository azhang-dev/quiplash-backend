class QuestionsController < ApplicationController
  

  def new

  end

  def index
    questions = Question.all
    p questions.to_json
    render json: questions.to_json
  end

  

  def create

  end

  def edit

  end

end