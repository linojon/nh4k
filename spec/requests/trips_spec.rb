require 'spec_helper'

describe "Trips" do
  describe "GET /trips" do
    it "works! (now write some real specs)" do
      get '/trips'
      response.status.should be(200)
    end
  end
end
