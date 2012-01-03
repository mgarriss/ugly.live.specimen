require 'spec_helper'

describe "watchers/edit.html.haml" do
  before(:each) do
    @watcher = assign(:watcher, stub_model(Watcher,
      :path => "MyString"
    ))
  end

  it "renders the edit watcher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => watchers_path(@watcher), :method => "post" do
      assert_select "input#watcher_path", :name => "watcher[path]"
    end
  end
end
