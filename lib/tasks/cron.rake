task :cron => :environment do
  # Quoteopedia on Heroku is configured for daily cron.
  # No need to check the time before sending, the job
  # runs once a day, just send the quotations whenever
  # the cron job is called.
  DailyMailer.deliver_send_quotations
end
