# coding: utf-8
class Cpanel::UsersController < Cpanel::ApplicationController
  before_filter :find_user, except: [:index, :new]
  
  def index
    @users = User.unscoped.order("id DESC").paginate :page => params[:page], :per_page => 30
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to cpanel_users_path, notice: "User was successfully created."
    else
      render :new
    end
  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to cpanel_users_path, notice: "User was successfully updated."
    else
      render :action => "edit"
    end
  end

  def destroy
    @user.destroy
    redirect_to cpanel_users_url
  end
  
  protected
  def find_user
    @user = User.unscoped.find(params[:id])
  end
end
