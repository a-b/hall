require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Hall do
  subject { Hall::Client.new("fake_room_token", "form_name") }

  describe '#post_message' do
    it 'shold successfully post a message' do
      VCR.use_cassette('hall_api') do
        subject.post_message('my text').response.code.should eq "201"
      end
    end
  end
end
