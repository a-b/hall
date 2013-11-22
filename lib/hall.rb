require "hall/version"
require "httparty"

module Hall

  class Client
    include HTTParty
    base_uri 'https://hall.com/api/1/'

    def initialize(room_token, integration_name)
      @room_token = room_token
      @integration_name = integration_name
    end

    def post_message(text)
      body ={
        "title" => @integration_name,
        "message" => text
      }

      options = {body: body, options: { headers: { 'ContentType' => 'application/json' } } }

      self.class.post(room_path, options)
    end

    private

    def room_path
      '/services/generic/' + @room_token
    end
  end
end
