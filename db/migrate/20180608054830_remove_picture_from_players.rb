class RemovePictureFromPlayers < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :picture, :string
  end
end