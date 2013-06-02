# coding: utf-8
class Cpanel::HomeController < Cpanel::ApplicationController
  def index
    @recent_questions = Question.recent.limit(5)
  end
end