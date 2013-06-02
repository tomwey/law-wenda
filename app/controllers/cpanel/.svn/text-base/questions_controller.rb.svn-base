# coding: utf-8
class Cpanel::QuestionsController < Cpanel::ApplicationController
  def index
    @questions = Question.unscoped.order('id DESC').includes(:user).paginate page: params[:page], per_page: 30
  end

  def show
    @question = Question.unscoped.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.unscoped.find(params[:id])
  end
  
  def create
    pt = params[:question]
    @question = Question.new(pt)
    @question.user_id = current_user.id
    
    if @question.save
      redirect_to cpanel_questions_path, notice: "Question was successfully created."
    else
      render :action => "new"
    end
  end

  def update
    @question = Question.unscoped.find(params[:id])
    
    if @question.update_attributes(params[:question])
      redirect_to cpanel_questions_path, notice: "Question was successfully updated."
    else
      render :action => "edit"
    end
  end

  def destroy
    @quesiton = Question.unscoped.find(params[:id])
    @question.destroy
    redirect_to cpanel_questions_url
  end
  
end
