# coding: utf-8
class UsersController < ApplicationController
  
  before_filter :find_user, :only => [:show]
  
  def index
  end

  def show
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
end
