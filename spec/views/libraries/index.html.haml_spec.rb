require 'spec_helper'

describe "libraries/index.html.haml" do
  before(:each) do
    assign(:libraries, [
      stub_model(Library,
        :name => "Name",
        :path => "MyText"
      ),
      stub_model(Library,
        :name => "Name",
        :path => "MyText"
      )
    ])
  end

  it "renders a list of libraries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
