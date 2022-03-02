# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {
    :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
    :password => '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', # This is the secret sendgrid API key which was issued during API key creation
    :domain => 'mentorblog.io',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }

