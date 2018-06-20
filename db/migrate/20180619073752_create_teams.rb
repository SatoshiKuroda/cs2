class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :preficture
      t.string :city
      t.string :stadium

      t.timestamps
    end
  end
end
