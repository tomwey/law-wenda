# coding: utf-8
module ApplicationHelper
  def resource_name
    :user
  end
  
  def resource
    @resource ||= User.new
  end
  
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
  def admin?(user = nil)
    user ||= current_user
    user.try(:admin?)
  end
  
  def render_close_icon(dismiss = 'alert')
    link_to '&times;'.html_safe, '#', :class => 'close', 'data-dismiss' => dismiss
  end
  
  def flash_class(flash_key)
    flash_key == :notice ? 'alert-success' : "alert-#{flash_key}"
  end
  
  def render_flashes
    flash_messages = []

    flash.each do |type, message|
      type = :success if type == :notice
      text = content_tag(:div, link_to("x", "#", :class => "close", 'data-dismiss' => "alert") + message, :class => "alert alert-#{type}")
      flash_messages << text if message
    end

    flash_messages.join("\n").html_safe
    
  end
  
end
