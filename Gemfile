# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

gem "decidim", "0.22.0"
# gem "decidim-consultations", "0.22.0"

gem "decidim-initiatives", "0.22.0"
# Add dependencies manually
# https://github.com/Platoniq/decidim-install/issues/40
gem "wicked_pdf"
gem "wkhtmltopdf-binary"

# LDAP support not released individually, only as a package of diputacioBCN
# Stay tuned to: https://github.com/diputacioBCN/decidim-diba/issues/40
# gem 'decidim-ldap'
git 'https://github.com/pirates-cat/decidim-diba.git' do
  gem 'decidim-ldap'
end

# By default packages
gem "bootsnap", "~> 1.3"

gem "puma", ">= 4.3.5"
gem "uglifier", "~> 4.1"

gem "faker", "~> 1.9"

gem "figaro"
gem "whenever", require: false

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "decidim-dev", "0.22.0"
end

group :development do
  gem "letter_opener_web", "~> 1.3"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 3.5"
end

group :production do
  gem "passenger"
  gem 'delayed_job_active_record'
  gem "daemons"
end
