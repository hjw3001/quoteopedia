task :cron => :environment do
  # Everynight at midnight, send out a random quote
  if Time.now.hour == 0 # run at midnight
    # Get all the quotations in the db
    quotations = Quotation.all

    # Select a quotation at random
    quotation = quotations[rand(quotations.size)]

    # Using the e-mail environment vars, send an e-mail with the random quote
    # ENV['FACEBOOK_EMAIL'], ENV['ADMIN_EMAIL']
    
  end
end
