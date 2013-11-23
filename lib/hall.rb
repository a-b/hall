require "hall/version"
require "httparty"

module Hall

  class Client
    include HTTParty
    base_uri 'https://hall.com/api/1/'

    # Client initialization
    #
    # Usage:
    #
    #   client = Hall::Client.new('room_token', 'from_name', 'url to the picture')
    #
    # Params:
    #
    # +room_token+::  token for your room grab it through the Add integration -> Other or https://hall.com/docs/integrations/generic/
    #
    # +from_name+::  defines the name used for message posting
    #
    # +from_picture+:: add picture to the post

    def initialize(room_token, from_name, from_picture = nil)
      @room_token   = room_token
      @from_name    = from_name
      @from_picture = from_picture
    end

    # Post a message.
    #
    # Usage:
    #
    #   client = post_message 'plain text'
    #
    #
    # Params:
    #
    # +text+::  plain text to be send to the chat

    def post_message(text)
      body ={
        "title"   => @from_name,
        "picture" => @from_picture,
        "message" => text
      }

      self.class.post(room_path, request_options(body))
    end

    private

    def room_path
      '/services/generic/' + @room_token
    end

    def request_options(body)
      {body: body, options: { headers: { 'ContentType' => 'application/json' } } }
    end
  end
end
