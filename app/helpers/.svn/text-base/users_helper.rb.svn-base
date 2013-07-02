# coding: utf-8
require 'digest/md5'
module UsersHelper
  def setup_user(user)
    user.build_profile unless user.profile
    user
  end
  
  def render_user_level_tag(user)
    if user.admin?
      content_tag(:span, t("common.admin_user"), :class => "label label-warning")
    elsif user.lawer?
      content_tag(:span, t("common.lawer_user"), :class => "label label-success")
    else
      content_tag(:span, t("common.limit_user"), :class => "label")
    end
  end
  
  def user_name_tag(user,options = {})
    location = options[:location] || false
    return "匿名" if user.blank?
    result = link_to(user.login, user_path(user.login))
    return result
  end
  
  def user_avatar_width_for_size(size)
    case size
    when :normal then 48
    when :small then 16
    when :large then 64
    when :big then 120
    else size
    end
  end
  
  def user_avatar_size_name_for_2x(size)
    case size
    when :normal then :large
    when :small then :normal
    when :large then :big
    when :big then :big
    else size
    end
  end
  
  def user_avatar_tag(user, size = :normal, opts = {})
    link = opts[:link] || true
    
    width = user_avatar_width_for_size(size)
    
    if user.blank?
      return image_tag("avatar/#{size}.png", :class => "uface")
    end
    
    if user[:avatar].blank?
      # default_url = asset_path("avatar/#{size}.png")
      # img_src = "http://www.gravatar.com/avatar/#{user.email_md5}.png?s=#{width * 2}&d=404"
      # img = image_tag(default_url, :class => "uface", :style => "width:#{width}px;height:#{width}px")
      # puts img
      hash = Digest::MD5.hexdigest(user.email)
      img = image_tag("http://www.gravatar.com/avatar/#{hash}.png?s=#{width}&d=identicon")
    else
      img = image_tag(user.avatar.url(user_avatar_size_name_for_2x(size)), :class => "uface",:style => "width:#{width}px;height:#{width}px;")
    end
    
    if link
      raw %(<a href="#{user_path(user.login)}">#{img}</a>)
    else
      raw img
    end
  end
  
  def render_user_state(user, abnormal_only = true)
    "正常"
  end
  
  def render_user_location(user)
    user.location
  end
  
  def render_user_join_time(user)
    I18n.l(user.created_at.to_date, :format => :long)
  end
  
end