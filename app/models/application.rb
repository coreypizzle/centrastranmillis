class Application < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :positionappliedfor
  attribute :telephone
  attribute :address
  attribute :postcode
  attribute :secondaryschool
  attribute :datestartandfinished
  attribute :examinationsandresults
  attribute :furtheredandtraining
  attribute :datestartandfinishedtwo
  attribute :coursesandqualifications
  attribute :employername
  attribute :employeraddress
  attribute :fromandto
  attribute :descriptionofrole
  attribute :reasonforleaving
  attribute :employername
  attribute :employeraddress
  attribute :fromandto
  attribute :descriptionofrole
  attribute :reasonforleaving
  attribute :employername
  attribute :employeraddress
  attribute :fromandto
  attribute :descriptionofrole
  attribute :reasonforleaving

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "coreypizzle@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
