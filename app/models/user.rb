# coding: utf-8
require "digest/md5"
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:async, 
         :recoverable, :rememberable, :trackable, :validatable
         
  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :email, :avatar, :verified, :role, :password, :password_confirmation, :remember_me, :profile_attributes
  # attr_accessible :title, :body

  # ROLES = %w(用户 律师)#[["用户", "1"], ["律师","2"]]
  
  validates :login, presence: true, uniqueness: { case_sensitive: false }, format: { with: /[a-zA-Z0-9_]+/ }
  validates :email, :role, presence: true


  has_many :questions, :inverse_of => :user
  has_many :answers, :inverse_of => :user
  
  has_one :profile, :dependent => :destroy
  accepts_nested_attributes_for :profile, :reject_if => lambda { |attrs| attrs[:_role] == roles[0] }, :allow_destroy => true
  
  mount_uploader :avatar, AvatarUploader
  
  scope :member, where(:role => '用户')
  scope :lawer, where(:role => '律师')
  
  delegate :location, :to => :profile, :allow_nil => true
  
  def self.roles
    Settings.user_roles
  end
  
  def admin?
    Settings.admin_emails.include?(self.email)
  end
  
  def lawer?
    self.role == User.roles[1]
  end
  
  # 是否读过 question 的最近更新
  def question_read?(question)
    last_answer_id = question.last_answer.id rescue -1
    Rails.cache.read("user:#{self.id}:question_read:#{question.id}") == last_answer_id
  end
  
  def email_md5
    hash = self.email.blank? ? Digest::MD5.hexdigest("") : Digest::MD5.hexdigest(self.email)
    hash
  end
  
  def update_with_password(params={})
    if !params[:current_password].blank? or !params[:password].blank? or !params[:password_confirmation].blank?
      super
    else
      params.delete(:current_password)
      self.update_without_password(params)
    end
  end
  
  # 注册邮件提醒
  after_create :send_welcome_mail
  def send_welcome_mail
    UserMailer.delay.welcome(self.id)
  end
  
  # 重新生成 Private Token
  def update_private_token
    random_key = "#{SecureRandom.hex(10)}:#{self.id}"
    self.update_attribute(:private_token, random_key)
  end
  
  def ensure_private_token!
    self.update_private_token if self.private_token.blank?
  end
  
end
