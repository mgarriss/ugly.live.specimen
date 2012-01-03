require 'spec_helper'

describe "samples" do
  describe "list" do
    it "displays a list of selectable samples if at least one exists" do
      sample = Factory(:sample)
      visit "/samples"
      page.should have_selector('.sample_summary')
    end
  end
end
