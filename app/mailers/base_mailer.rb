# coding: utf-8
class BaseMailer < ActionMailer::Base
  default :from => Settings.email_sender
  default :charset => "utf-8"
  default :content_type => "text/html"
  default_url_options[:host] = Settings.domain
  
  layout 'mailer'
  helper :application
end