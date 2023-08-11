class ApiToken
  include HTTParty
  base_uri CONFIG['base_token']
  headers CONFIG['token_headers']
  default_timeout 120

  def initialize() end

  def token_get
    body = {}
    body[:client_id] = 'ms-user'
    body[:username] = ENV['USERNAME_AUTOMATION']
    body[:password] = ENV['PASSWORD_AUTOMATION']
    body[:grant_type] = 'password'

    response = self.class.post('/auth//protocol/openid-connect/token',
                               body: URI.encode_www_form(body))
    "Bearer #{response['access_token']}"
  end
end
