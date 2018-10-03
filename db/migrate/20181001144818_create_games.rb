class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :period_counter, default: 0
      t.integer :home_score, default: 0
      t.integer :away_score, default: 0
      t.string :game_updates, default: ""

      t.timestamps
    end
  end
end
