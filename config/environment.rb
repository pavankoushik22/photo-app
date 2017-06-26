# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	:address => 'smtp.sendgrid.net',
	:port => '587',
	:authenticate => :plain,
	:user_name => ENV['SENDGRID-USERNAME'],
	:password => ENV['SENDGRID-PASSWORD'],
	:domain => 'heroku.com',
	:enable_starttls_auto => true
}