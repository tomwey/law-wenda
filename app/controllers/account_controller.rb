class AccountController < Devise::RegistrationsController
  layout 'application'
  
  def edit
    @user = current_user
    @user.update_private_token unless @user.private_token
  end
  
  def update
    params[:user][:profile_attributes][:nodes] ||= [] if current_user.lawer?
    
    super
  end
  
end