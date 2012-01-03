class ChangeSamplesPathToString < ActiveRecord::Migration
  def up
    change_column :samples, :path, :string
  end

  def down
    change_column :samples, :path, :text
  end
end
