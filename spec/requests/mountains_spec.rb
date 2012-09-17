require 'spec_helper'

describe "Mountains" do
  describe "GET /mountains" do
    it "works! (now write some real specs)" do
      get '/mountains'
      response.status.should be(200)
    end
  end
end
