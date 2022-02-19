class AnswersController < ApplicationController
  

  def new

  end

  def index
    render json: Answer.all
  end



end