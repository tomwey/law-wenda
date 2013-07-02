# coding: utf-8
class QuestionsController < ApplicationController
  def index
    @questions = Question.recent.without_body.includes(:user).paginate :page => params[:page], :per_page => 15
    drop_breadcrumb("问题列表")
    drop_breadcrumb("默认")
  end
  
  def hot
    @questions = Question.hot.without_body.paginate :page => params[:page], :per_page => 15
    drop_breadcrumb("问题列表", questions_path)
    drop_breadcrumb("热门")
    render :index
  end
  
  def activity
    @questions = Question.activity.without_body.paginate :page => params[:page], :per_page => 15
    drop_breadcrumb("问题列表", questions_path)
    drop_breadcrumb("活跃")
    render :index
  end
  
  def no_answer
    @questions = Question.no_answer.without_body.paginate :page => params[:page], :per_page => 15
    drop_breadcrumb("问题列表", questions_path)
    drop_breadcrumb("没有回答")
    render :index
  end
  
  def node
    
  end
end