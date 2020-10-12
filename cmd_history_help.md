# Useful commands
### By Lenin

As Decidim user:

```bash
cd /opt/decidim-app

bundle --version
ruby --version
bundle update --bundler
bundle

RAILS_ENV=production bin/rails console -e production
RAILS_ENV=production bin/rails assets:precompile db:migrate
RAILS_ENV=production bundle exec rake assets:precompile
RAILS_ENV=production bin/rails decidim:check_locales
RAILS_ENV=production bin/rails decidim:upgrade
RAILS_ENV=production bin/rails db:migrate

RAILS_ENV=production bundle exec rails decidim_initiatives:install:migrations
RAILS_ENV=production bundle exec rails db:migrate

nano ./config/schedule.rb
bundle exec whenever
bundle exec whenever --update-crontab
RAILS_ENV=production bin/delayed_job status

nano ./config/secrets.yml
nano ./config/application.yml
nano ./config/initializers/decidim.rb

tail -f /opt/decidim-app/log/production.log

git status
```

As root:

```bash
passenger-config restart-app /opt/decidim-app
```
