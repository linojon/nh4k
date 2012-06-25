require 'spec_helper'

describe "hikers/edit" do
  before(:each) do
    @hiker = assign(:hiker, stub_model(Hiker,
      :name => "MyString"
    ))
  end

  it "renders the edit hiker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hikers_path(@hiker), :method => "post" do
      assert_select "input#hiker_name", :name => "hiker[name]"
    end
  end
end
