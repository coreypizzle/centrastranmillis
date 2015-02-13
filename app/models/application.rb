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

  attribute :employernametwo
  attribute :employeraddresstwo
  attribute :fromandtotwo
  attribute :descriptionofroletwo
  attribute :reasonforleavingtwo

  attribute :employernamethree
  attribute :employeraddressthree
  attribute :fromandtothree
  attribute :descriptionofrolethree
  attribute :reasonforleavingthree

  attribute :referee1
  attribute :refereecontact1
  attribute :referee2
  attribute :refereecontact2


  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "mcgoveranmaloneroad@centra.co.uk",
      :from => %("Automated Service" <mcgoveranmaloneroad@centra.co.uk>)
    }
  end
end
