class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:async, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  validates :login, presence: true, uniqueness: { case_sensitive: false }, format: { with: /[a-zA-Z0-9_]+/ }

  
  def admin?
    Settings.admin_emails.include?(self.email)
  end
  
  # 注册邮件提醒
  after_create :send_welcome_mail
  def send_welcome_mail
    UserMailer.delay.welcome(self.id)
  end
  
  # def to_param
  #   "#{id}-#{login}"
  # end
  
end
