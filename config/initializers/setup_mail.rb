ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => "iard.lab.ittelkom",
  :password             => "gogoiardgo",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
