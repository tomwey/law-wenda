# coding: utf-8
class QuestionsController < ApplicationController
  
  before_filter :set_menu_active
  before_filter :init_base_breadcrumb
  after_filter :add_visit, :only => [:show]
  
  def index
    @questions = Question.recent.without_body.includes(:user).paginate :page => params[:page], :per_page => 15
    drop_breadcrumb("默认")
  end
  
  def show
    @question = Question.includes(:user, :node).find(params[:id])
    @node = @question.node
    @answers = @question.answers.includes(:user)
    
    if current_user
      current_user.read_question(@question)
    end
    
    set_seo_meta("#{@question.title} &raquo; 问题")
    drop_breadcrumb("#{@node.name}", node_questions_path(@node.id))
    drop_breadcrumb("浏览问题")
    
  end
  
  def hot
    @questions = Question.hot.without_body.paginate :page => params[:page], :per_page => 15
    drop_breadcrumb("热门")
    render :index
  end
  
  def activity
    @questions = Question.activity.without_body.paginate :page => params[:page], :per_page => 15
    drop_breadcrumb("活跃")
    render :index
  end
  
  def no_answer
    @questions = Question.no_answer.without_body.paginate :page => params[:page], :per_page => 15
    drop_breadcrumb("没有回答")
    render :index
  end
  
  def node
    
  end
  
  
  protected
  
  def set_menu_active
    @current = @current = ['/questions']
  end
  
  def init_base_breadcrumb
    drop_breadcrumb('问题列表', questions_path)
  end
  
  private
  
  def add_visit
    @question.visit
  end
  
end