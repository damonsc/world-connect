# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey',
  :password => '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
',
  :domain => 'purecodedigital.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}