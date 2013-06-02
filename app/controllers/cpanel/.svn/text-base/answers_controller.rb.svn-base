# coding: utf-8
class Cpanel::AnswersController < Cpanel::ApplicationController
  def index
    @answers = Answer.order("id DESC").paginate :page => params[:page], :per_page => 30
  end
  
  def show
    @answer = Answer.find(params[:id])
    
    if @answer.question.blank?
      redirect_to cpanel_answers_path, :alert => "帖子已经不存在"
    end
  end
  
  def new
    @answer = Answer.new
  end
  
  def edit
    @answer = Answer.find(params[:id])
  end
  
  def create
    @answer = Answer.new(params[:answer])
    
    if @answer.save
      redirect_to cpanel_answers_path, :notice => "Answer was successfully created."
    else
      render :new
    end
  end
  
  def update
    @answer = Answer.find(params[:id])
    
    if @answer.update_attributes(params[:answer])
      redirect_to cpanel_answers_path, notice: "Answer was successfully updated."
    else
      render :edit
    end
  end
  
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to cpanel_answers_url
  end
  
end
