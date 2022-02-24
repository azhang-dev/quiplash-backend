class QuestionbanksController < ApplicationController
  

  def new

  end

  def index
    questionbanks = Questionbank.all
    
    p questionbanks.to_json
    render json: questionbanks.to_json
  end

  def create

  end

  def edit

  end

end