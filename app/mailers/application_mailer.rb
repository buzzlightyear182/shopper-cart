class ApplicationMailer < ActionMailer::Base
  include SendGrid
  default from: "testing.buzzlightyear182@gmail.com"
  layout 'mailer'
end
