require 'rails_helper'

RSpec.describe "Dracula", type: :request do
  describe "GET /dracula" do
    it "renders the Dracula novel image" do
      get '/dracula', xhr: true
      expect(response.body).to include('<img src="/assets/dracula/novel')
    end
  end

  describe "POST /dracula/image" do
    context "with params image: 'novel'" do
      it "renders a turbo steam containing the Dracula novel image" do
        post '/dracula/image', params: { image: 'novel', format: :turbo_stream }, xhr: true
        expect(response.stream.body).to include('<img src="/assets/dracula/novel')
      end
    end

    context "with params image: 'castle'" do
      it "renders a turbo steam containing the Dracula castle image" do
        post '/dracula/image', params: { image: 'castle', format: :turbo_stream }, xhr: true
        expect(response.stream.body).to include('<img src="/assets/dracula/castle')
      end
    end
  end
end
