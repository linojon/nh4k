require 'spec_helper'

describe "hikers/new" do
  before(:each) do
    assign(:hiker, stub_model(Hiker,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new hiker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hikers_path, :method => "post" do
      assert_select "input#hiker_name", :name => "hiker[name]"
    end
  end
end
