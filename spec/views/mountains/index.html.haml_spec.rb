require 'spec_helper'

describe "mountains/index" do
  before(:each) do
    assign(:mountains, [
      stub_model(Mountain,
        :name => "Name",
        :elevation => 1,
        :lat => "9.99",
        :lng => "9.99",
        :trainsnh => "Trainsnh",
        :netc => "Netc",
        :amc => "Amc",
        :notes => "MyText"
      ),
      stub_model(Mountain,
        :name => "Name",
        :elevation => 1,
        :lat => "9.99",
        :lng => "9.99",
        :trainsnh => "Trainsnh",
        :netc => "Netc",
        :amc => "Amc",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of mountains" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Trainsnh".to_s, :count => 2
    assert_select "tr>td", :text => "Netc".to_s, :count => 2
    assert_select "tr>td", :text => "Amc".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
