require 'spec_helper'

describe "watchers/new.html.haml" do
  before(:each) do
    assign(:watcher, stub_model(Watcher,
      :path => "MyString"
    ).as_new_record)
  end

  it "renders new watcher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => watchers_path, :method => "post" do
      assert_select "input#watcher_path", :name => "watcher[path]"
    end
  end
end
