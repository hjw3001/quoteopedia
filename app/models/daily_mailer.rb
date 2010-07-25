class DailyMailer < ActionMailer::Base
  def send_quotations  
    recipients [ENV['FACEBOOK_EMAIL'], ENV['ADMIN_EMAIL']]
    from       "hjw3001@gmail.com"
    subject    "Daily Quotation"
    body       :quotation => random_quotation
  end
  
  def random_quotation
    # Get all the quotations in the db
    quotations = Quotation.all
 
    # Select a quotation at random
    quotations[rand(quotations.size)]
  end
end
