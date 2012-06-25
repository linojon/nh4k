require 'spec_helper'

describe "hikers/index" do
  before(:each) do
    assign(:hikers, [
      stub_model(Hiker,
        :name => "Name"
      ),
      stub_model(Hiker,
        :name => "Name"
      )
    ])
  end

  it "renders a list of hikers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
