require 'spec_helper'

describe "mountains/show" do
  before(:each) do
    @mountain = assign(:mountain, stub_model(Mountain,
      :name => "Name",
      :elevation => 1,
      :lat => "9.99",
      :lng => "9.99",
      :trainsnh => "Trainsnh",
      :netc => "Netc",
      :amc => "Amc",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Trainsnh/)
    rendered.should match(/Netc/)
    rendered.should match(/Amc/)
    rendered.should match(/MyText/)
  end
end
