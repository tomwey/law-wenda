# coding: utf-8
class HomeController < ApplicationController
  def index
    drop_breadcrumb("首页", root_path)
  end
  
  def api
    drop_breadcrumb("API", root_path)
  end
  
end
