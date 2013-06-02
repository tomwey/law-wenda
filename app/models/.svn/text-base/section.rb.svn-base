class Section < ActiveRecord::Base
  attr_accessible :name, :sort, :summary
  
  has_many :nodes, :dependent => :destroy
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
  default_scope order('sort DESC')
  
  
  def self.all_sections
    includes(:nodes).all
  end
end
