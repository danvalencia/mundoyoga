class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :name
      t.string :description
      t.string :tags
      t.string :teacher
      t.string :duration
      t.string :style

      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
end
