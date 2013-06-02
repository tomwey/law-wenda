class Question < ActiveRecord::Base
  attr_accessible :body, :title
  
  belongs_to :user, :counter_cache => true, :inverse_of => :questions
  belongs_to :node, :counter_cache => true, :inverse_of => :questions
  
  has_many :answers, :inverse_of => :question
  
  attr_protected :user_id
  validates_presence_of :user_id, :title, :body, :node_id
  
  scope :recent, order('id DESC')
  
  def update_answered_at(answer)
    self.answered_at = answer.created_at
    self.save
  end
end
