require 'spec_helper'

describe "hikers/show" do
  before(:each) do
    @hiker = assign(:hiker, stub_model(Hiker,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
