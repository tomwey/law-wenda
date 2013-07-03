# coding: utf-8
class UsersController < ApplicationController
  
  before_filter :set_menu_active
  before_filter :find_user, :only => [:show]
  caches_action :index, :expires_in => 2.hours, :layout => false
  
  def index
    @total_lawer_count = User.lawer.count
    @active_lawers = User.lawer.hot.limit(30)
    @recent_join_lawers = User.lawer.recent.limit(30)
    drop_breadcrumb("律师")
  end

  def show
    set_seo_meta("#{@user.login}")
    drop_breadcrumb(@user.login)
  end
  
  def update_private_token
    current_user.update_private_token
    render :text => current_user.private_token
  end
  
  protected
  def find_user
    # 处理 login 有大写字母的情况
    if params[:id] != params[:id].downcase
      redirect_to request.path.downcase, :status => 301
      return
    end
    
    @user = User.where(:login => params[:id]).first
    render_404 if @user.nil?
  end
  
  def set_menu_active
    @current = @current = ['/users']
  end
end
