class QuestionsController < ApplicationController
  

  def new

  end

  def index
    render json: Question.all
  end

  def game_data
    game_data = Question.all.reverse.map {|question|

    questionText= Question.first.question_id
        
    answer = Answer.find_by(id: question.answer_id)
  }
    
    render json: game_data 
  end

  def create

  end

  def edit

  end

end