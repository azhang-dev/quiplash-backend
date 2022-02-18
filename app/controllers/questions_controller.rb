class QuestionsController < ApplicationController
  

  def new

  end

  def index
    render json: Question.all
  end

  def game_data

    answer= Answer.all
    render json: answer
  end

  def create

  end

  def edit

  end

end