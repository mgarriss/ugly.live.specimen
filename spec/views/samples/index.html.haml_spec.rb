require 'spec_helper'

describe "samples/index.html.haml" do
  before(:each) do
    assign :samples, [
      @sample_1 = Factory(:sample),
      @sample_2 = Factory(:sample)
    ]
  end

  it "renders a list of samples" do
    render
    assert_select ".sample_summary", :count => 2
  end
end
