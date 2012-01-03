require 'spec_helper'

describe "watchers/show.html.haml" do
  before(:each) do
    @watcher = assign(:watcher, stub_model(Watcher,
      :path => "Path"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Path/)
  end
end
