class QuestionbanksController < ApplicationController
  
  before_action :check_if_logged_in, except: [:index, :show]

  def new

  end

  def index
    questionbanks = Questionbank.all
    p questionbanks.to_json
    render json: questionbanks.to_json
  end

  

  def create
    questionbank = QuestionBank.new questionbank_params
    questionbank.user_id = current_user.id

  end


  def show
    questionbank = Questionbank.find params[:id]
    render json: questionbank.to_json
  end

  def edit

  end




   private

  def questionbank_params
    params.require(:questionbank).permit(:name, :questions)
  end


end