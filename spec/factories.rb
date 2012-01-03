FactoryGirl.define do
  sequence :path_to_nonexistant_file do |n|
    "/tmp/ugly.live.speciment/#{n}"
  end
  
  factory :sample do
    path { FactoryGirl.generate(:path_to_nonexistant_file) } 
  end
end
