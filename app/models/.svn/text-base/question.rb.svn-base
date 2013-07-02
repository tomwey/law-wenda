class Question < ActiveRecord::Base
  attr_accessible :body, :title
  
  belongs_to :user, :counter_cache => true, :inverse_of => :questions
  belongs_to :node, :counter_cache => true, :inverse_of => :questions
  
  has_many :answers, :inverse_of => :question
  
  attr_protected :user_id
  validates_presence_of :user_id, :title, :body, :node_id
  
  scope :without_body, except(:body)
  scope :recent, order('id DESC')
  scope :hot, order('answers_count DESC')
  scope :activity, order('visit_count DESC')
  scope :no_answer, where(:answers_count => 0)
  
  
  def last_answer
    answers.recent.limit(1).first
  end
  
  def update_answered_at(answer)
    self.answered_at = answer.created_at
    self.save
  end
  
  def visit
    self.class.increment_counter(:visit_count, self.id)
  end
end
