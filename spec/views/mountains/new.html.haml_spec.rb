require 'spec_helper'

describe "mountains/new" do
  before(:each) do
    assign(:mountain, stub_model(Mountain,
      :name => "MyString",
      :elevation => 1,
      :lat => "9.99",
      :lng => "9.99",
      :trainsnh => "MyString",
      :netc => "MyString",
      :amc => "MyString",
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new mountain form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mountains_path, :method => "post" do
      assert_select "input#mountain_name", :name => "mountain[name]"
      assert_select "input#mountain_elevation", :name => "mountain[elevation]"
      assert_select "input#mountain_lat", :name => "mountain[lat]"
      assert_select "input#mountain_lng", :name => "mountain[lng]"
      assert_select "input#mountain_trainsnh", :name => "mountain[trainsnh]"
      assert_select "input#mountain_netc", :name => "mountain[netc]"
      assert_select "input#mountain_amc", :name => "mountain[amc]"
      assert_select "textarea#mountain_notes", :name => "mountain[notes]"
    end
  end
end
