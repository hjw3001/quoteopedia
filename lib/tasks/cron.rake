task :cron => :environment do
  # Everynight at midnight, send out a random quote
  if Time.now.hour == 0
    DailyMailer.deliver_send_quotations
  end
end
