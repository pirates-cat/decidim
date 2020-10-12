Decidim::Ldap.configure do |config|
  config.ldap_username = Rails.application.secrets.ldap[:username]
  config.ldap_password = Rails.application.secrets.ldap[:password]
end
