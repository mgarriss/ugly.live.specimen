class CreateWatchers < ActiveRecord::Migration
  def change
    create_table :watchers do |t|
      t.string :path

      t.timestamps
    end
  end
end
