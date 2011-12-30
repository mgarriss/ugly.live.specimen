require 'spec_helper'

describe "libraries/new.html.haml" do
  before(:each) do
    assign(:library, stub_model(Library,
      :name => "MyString",
      :path => "MyText"
    ).as_new_record)
  end

  it "renders new library form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => libraries_path, :method => "post" do
      assert_select "input#library_name", :name => "library[name]"
      assert_select "textarea#library_path", :name => "library[path]"
    end
  end
end
