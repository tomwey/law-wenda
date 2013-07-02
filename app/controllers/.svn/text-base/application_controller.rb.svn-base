# coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def render_404
    render_optional_error_file(404)
  end
  
  def render_403
    render_optional_error_file(403)
  end
  
  def render_optional_error_file(status_code)
    status = status_code.to_s
    if %w(403 404 422 500).include?(status)
      render :template => "/errors/#{status}.html.erb", :status => status, :layout => "application"
    else
      render :template => "/errors/unknown.html.erb", :status => status, :layout => "application" 
    end
  end
  
  def set_seo_meta(title = '', meta_keywords = '', meta_description = '')
    if title.length > 0
      @page_title = "#{title}"
    end
    @meta_keywords = meta_keywords
    @meta_description = meta_description
    
  end
  
  def notice_success(msg)
    flash[:notice] = msg
  end
  
  def notice_error(msg)
    flash[:notice] = msg
  end
  
  def notice_warning(msg)
    flash[:notice] = msg
  end
  
  def require_user
    if current_user.blank?
      respond_to do |format|
        format.html { authenticate_user! }
        format.all { head :unauthorized }
      end
    end
  end
end
