class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :player_team
      t.string :position
      t.integer :overall_rating
      t.integer :price
      t.integer :ppg
      t.integer :off_rating
      t.integer :def_rating
      t.integer :team_id

      t.timestamps
    end
  end
end
