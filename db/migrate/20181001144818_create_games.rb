class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :home_score, default: 0
      t.integer :away_score, default: 0
      t.string :quarter_updates, default: ""

      t.timestamps
    end
  end
end
