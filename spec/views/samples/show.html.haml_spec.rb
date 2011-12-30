require 'spec_helper'

describe "samples/show.html.haml" do
  before(:each) do
    @sample = assign(:sample, stub_model(Sample,
      :name => "Name",
      :path => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
