class ApplicationMailer < ActionMailer::Base
  default from: "b8823c2ed633f47069c3d10875c08c84@inbound.postmarkapp.com"

  def application_email(application)
    @name = name
    @email = email
    @positionappliedfor = positionappliedfor
    mail(to: "coreypizzle@gmail.com", subject: "Job Application")
end
