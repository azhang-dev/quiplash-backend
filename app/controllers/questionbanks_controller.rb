class QuestionbanksController < ApplicationController

  before_action :authenticate_user, except: [:index, :show, :user_question_banks]

  skip_before_action :verify_authenticity_token, raise: false

  
  def index
    headers['Access-Control-Allow-Origin'] = '*'
    questionbanks = Questionbank.all
    p questionbanks.to_json
    render json: questionbanks.to_json
  end

  def user_question_banks
    user = User.find params[:id]
    questionbanks = user.questionbanks
    render json: questionbanks
  end

  def create
    headers['Access-Control-Allow-Origin'] = '*'
    
    questionbank = Questionbank.new questionbank_params
    questionbank.user_id = current_user.id
    
    questionbank.save 
  end
  
  def show
    headers['Access-Control-Allow-Origin'] = '*'
    questionbank = Questionbank.find params[:id]
    # show the list of questions of a certain questionbank_id
    render json: questionbank
  end

  def create_question
    headers['Access-Control-Allow-Origin'] = '*'
    
    questionbank = Questionbank.find params[:id]
    question = Question.new question_params
    p "********************", question
    questionbank.questions << question
    questionbank.save 
  end

  def questions_list
    headers['Access-Control-Allow-Origin'] = '*'
    questionbank = Questionbank.find params[:id]
    p questionbank
    # questionlist = questionbank.questions

    render json: questionbank , include: :questions 
  
  end




  private

  def questionbank_params
    params.require(:questionbank).permit(:name)
  end

  def question_params
    params.require(:question).permit(:question)
  end


end