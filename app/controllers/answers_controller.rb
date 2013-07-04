# coding: utf-8
class AnswersController < ApplicationController
  before_filter :find_question
  
  def create
    @answer = @question.answers.build(params[:answer])
    puts '---123---'
    @answer.user_id = current_user.id
    
    if @answer.save
      current_user.read_question(@question)
      @msg = "回答成功。"
    else
      @msg = @answer.errors.full_messages.join("<br /")
    end
  end
  
  protected
  def find_question
    @question = Question.find(params[:question_id])
  end
end
