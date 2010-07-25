class DailyMailer < ActionMailer::Base
  def send_quotations
    recipients [ENV['FACEBOOK_EMAIL'], ENV['ADMIN_EMAIL']]
    from       "hjw3001@gmail.com"
    subject    random_quotation
    body       :message => "Daily Quotation"
  end
  
  def random_quotation
    # Get all the quotations in the db
    quotations = Quotation.all
 
    # Select a quotation at random
    quotation = quotations[rand(quotations.size)]
    "#{quotation.content} #{quotation.author}"
  end
end
