env :PATH, ENV['PATH']

every :sunday, at: '5:00 am' do
  rake "decidim:delete_data_portability_files"
end

every :sunday, at: '4:00 am' do
  rake "decidim:open_data:export"
end

every 1.day, at: '3:00 am' do
  rake "decidim:metrics:all"
end

every 5.minute do
  command "cd /opt/decidim-app && RAILS_ENV=production ./config/delayed_job_cron.sh"
end

every 1.day, at: '10:00 pm' do
  rake "decidim_initiatives:check_validating"
end

every 1.day, at: '10:05 pm' do
  rake "decidim_initiatives:check_published"
end

every 1.day, at: '10:10 pm' do
  rake "decidim_initiatives:notify_progress"
end
