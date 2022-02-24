class QuestionsController < ApplicationController
  

  def new


  end

  def index

    headers['Access-Control-Allow-Origin'] = '*'
    questions = Question.all
    p questions.to_json
    render json: questions.to_json
  end

  

  def create
    headers['Access-Control-Allow-Origin'] = '*'

    question = Question.new
    question.save
    
  end

  def edit

  end

end