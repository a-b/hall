require "hall/version"
require "JSON"

module Hall
  def self.message(msg_text)

    conn = Faraday.new(:url => "https://hall.com") do |faraday|
      faraday.request  :url_encoded
    end

    HALL_ROOM_TOKEN = ""
    HALL_INTEGRATION_NAME = "Gem Hall"

    doc ={
      "title" => HALL_INTEGRATION_NAME,
      "message" => msg_text
    } 

    conn.post do |req|
      req.url "/api/1/services/generic/" + HALL_ROOM_TOKEN
      req.headers['Content-Type'] = 'application/json'
      req.body = doc.to_json
    end

  end
end
