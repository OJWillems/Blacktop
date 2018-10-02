class AddingName1Name2SmackTalk1SmackTalk2ToUsersTable < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name_1, :string
    add_column :users, :name_2, :string
    add_column :users, :smack_talk_1, :string
    add_column :users, :smack_talk_2, :string
  end
end
