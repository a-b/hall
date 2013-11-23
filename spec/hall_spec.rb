require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Hall do

  context 'with picture' do
    #let(:hall_client) { Hall::Client.new("fake_room_token", "form_name", "http://www.mycompany.com/images/plant_icon.png") }

    #describe '#post_message' do
      #it 'shold successfully post a message' do
        #VCR.use_cassette('hall_api', :record => :once) do
          #hall_client.post_message('my text').response.code.should eq "201"
        #end
      #end
    #end
  end

  context 'without picture' do
     let(:hall_client) { Hall::Client.new("fake_room_token", "form_name") }

    describe '#post_message' do
      it 'shold successfully post a message' do
        VCR.use_cassette('hall_api') do
          hall_client.post_message('my text').response.code.should eq "201"
        end
      end
    end
  end
end
