class Sample < ActiveRecord::Base
  validates :path, presence:true
  validates :path, uniqueness:true
  validate :file_existance
  
  def file_existance
    unless File.exists?(path)
      errors.add(:path, "file #{path} does not exist")
    end
  end
end
