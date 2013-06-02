# coding: utf-8
class Profile < ActiveRecord::Base
  attr_accessible :description, :law_firm, :location, :practiceno
  
  attr_accessor :_role
  
  belongs_to :user
  
  validates_presence_of :law_firm, :location, :practiceno, :profession
  validates_uniqueness_of :practiceno
  
  validate :check_nodes
  
  attr_protected :user_id
  
  def nodes
    # return @temp if @temp
    return [] if self.profession.blank?
    self.profession.split(',')
  end
  
  def nodes=(val)
    @temp = val
    unless val.empty?
      self.profession = val.join(',')
    end
  end
  
  def check_nodes
    if @temp and (@temp.count == 0 or @temp.count > 10)
      errors.add(:profession, "选择不正确")
    end
  end
  
end
