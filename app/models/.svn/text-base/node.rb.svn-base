class Node < ActiveRecord::Base
  attr_accessible :name, :sort, :summary, :section_id
  
  belongs_to :section
  belongs_to :profle
  
  has_many :questions, :inverse_of => :node
  
  validates_presence_of :name, :summary, :section_id
  validates_uniqueness_of :name
  
  
  scope :sorted, order('sort DESC')
end
