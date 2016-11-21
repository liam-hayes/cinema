# Preview all emails at http://localhost:3000/rails/mailers/personmailer
class PersonmailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/personmailer/welcome
  def welcome
    Personmailer.welcome
  end

end
