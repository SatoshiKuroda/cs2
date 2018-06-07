class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :image
      t.integer :player_id

      t.timestamps
    end
  end
end
