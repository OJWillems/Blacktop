class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name_1
      t.string :name_2
      t.integer :wins, default: 0
      t.integer :losses, default: 0
      t.string :smack_talk_1
      t.string :smack_talk_2
      t.integer :budget, default: 600

      t.timestamps
    end
  end
end
