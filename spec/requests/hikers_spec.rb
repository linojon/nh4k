require 'spec_helper'

describe "Hikers" do
  describe "without authorization" do
    describe "GET /hikers" do
      it "should redirect" do
        get '/hikers'
        response.status.should be(302)
      end
    end
  end
 
  describe "with authorization" do
    before :each do
      given_a_user_is_logged_in
    end

    describe "GET /hikers" do
      it "should load page" do
        visit '/hikers'
        current_path.should == '/hikers'
      end
    end

  end
end

