DB = {
  'client-id-1' => {
    domain: 'http://localhost:9000'
  }
}

class OpenIdProviderController < ApplicationController
  def index
  end

  def create
    client_id = params['clientId']
    client_tab = DB[client_id] if client_id
    domain = client_tab[:domain] if client_tab
    path = params['redirectUri']
    if domain && path
      code = 'code'
      url = domain + path + "?code=#{code}"
      redirect_to url
    end
  end
end
