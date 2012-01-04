require 'spec_helper'

describe Sample do
  it 'must be an error to attempt to create with a path to a non-existant file' do
    sample = Sample.new(path:'/laksjdflaksdfj')
    sample.save.should eq(false)
    sample.should have(1).error_on(:path)
  end
  
  it 'must be an error to attempt to update with a path to a non-existant file' do
    tempfile = Tempfile.new('ugly.live.specimen')
    begin
      sample = Sample.create!(path:tempfile.path)
      sample.path = 'lkasjdflaksjf'
      sample.save.should eq(false)
      sample.should have(1).error_on(:path)
    ensure
      tempfile.delete
    end
  end
  
  it 'is creatable with a path that points to a file' do
    tempfile = Tempfile.new('ugly.live.specimen')
    begin
      sample = Sample.new(path:tempfile.path)
      sample.save.should eq(true)
      sample.valid?.should eq(true)
    ensure
      tempfile.delete
    end
  end
end
