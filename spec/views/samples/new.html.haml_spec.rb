require 'spec_helper'

describe "samples/new.html.haml" do
  before(:each) do
    assign(:sample, stub_model(Sample,
      :name => "MyString",
      :path => "MyText"
    ).as_new_record)
  end

  it "renders new sample form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => samples_path, :method => "post" do
      assert_select "input#sample_name", :name => "sample[name]"
      assert_select "textarea#sample_path", :name => "sample[path]"
    end
  end
end
