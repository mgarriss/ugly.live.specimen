require 'spec_helper'

describe "watchers/index.html.haml" do
  before(:each) do
    assign(:watchers, [
      stub_model(Watcher,
        :path => "Path"
      ),
      stub_model(Watcher,
        :path => "Path"
      )
    ])
  end

  it "renders a list of watchers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Path".to_s, :count => 2
  end
end
