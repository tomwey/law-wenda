class Answer < ActiveRecord::Base
  attr_accessible :body
  
  belongs_to :question, counter_cache: true, :inverse_of => :answers
  belongs_to :user, counter_cache: true, :inverse_of => :answers
  
  delegate :login, :to => :user, :prefix => true
  
  attr_protected :user_id, :question_id
  
  validates_presence_of :body
  
  default_scope order('created_at DESC')
  scope :recent, order("id DESC")
  
  
  after_create :update_parent_question
  def update_parent_question
    question.update_answered_at(self)
  end
  
end
