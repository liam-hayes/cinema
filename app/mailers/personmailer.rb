class Personmailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.personmailer.welcome.subject
  #
  def welcome(person)
    @person = person
	mail(:to => person.email, :subject => "Welcome to the cinema site")
  end
end
