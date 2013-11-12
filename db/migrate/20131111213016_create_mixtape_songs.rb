class CreateMixtapeSongs < ActiveRecord::Migration
  def change
    create_table :mixtape_songs do |t|
      t.references :song, index: true
      t.references :mixtape, index: true

      t.timestamps
    end
  end
end
