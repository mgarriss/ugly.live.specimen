require 'spec_helper'

describe "samples/show.html.haml" do
  before(:each) do
    @sample = assign(:sample, stub_model(Sample,
      :path => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    pending
  end
end
