# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey',
  :password => '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',
  :domain => 'worldconnect.app',
  :address => 'smtp.sendgrid.net',
  :port => 465,
  :authentication => :plain,
  :enable_starttls_auto => true
}