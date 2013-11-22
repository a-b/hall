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
    #   Hall::Client.new('room_token', 'from_name')
    #
    # Parametrs:
    #
    # +room_token+::  token for your room grab it through the Add integration -> Other or https://hall.com/docs/integrations/generic/
    #
    # +from_name+::  defines the name used for message posting
    #

    def initialize(room_token, from_name)
      @room_token = room_token
      @from_name = from_name
    end

    # Post a message.
    #
    # Usage:
    #
    #   post_message 'plain text'
    #
    #
    # Parametrs:
    #
    # +text+::  plain text to be send to the chat

    def post_message(text)
      body ={
        "title" => @from_name,
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
