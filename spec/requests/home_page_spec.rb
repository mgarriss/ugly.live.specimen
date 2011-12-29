require 'spec_helper'

describe "home page" do
  it "diplays a list of selectable libraries if at least one exists" do
    library = Factory(:library, name:"ableton live samples",
                      path:"/private/tmp/ugly.live.specimen/test_library")
    visit "/"
    click_link "ableton live samples"
    page.should have_selector('.library')
    page.should have_selector('a[href="/"]')
  end
end
