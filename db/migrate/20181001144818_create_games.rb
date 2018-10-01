class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :home_score
      t.integer :away_score
      t.string :quarter_updates

      t.timestamps
    end
  end
end
