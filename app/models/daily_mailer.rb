class DailyMailer < ActionMailer::Base
  def send_quotations
    recipients [ENV['FACEBOOK_EMAIL'], ENV['ADMIN_EMAIL']]
    from       "hjw3001@gmail.com"
    subject    random_quotation
    body       :message => "Daily Quotation"
  end
  
  def random_quotation
    # Select a quotation at random
    quotation = Quotation.random_quotation
    "#{quotation.content} #{quotation.author}"
  end
end
