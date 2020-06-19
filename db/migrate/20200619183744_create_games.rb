class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :status
      t.string :game_token

      t.timestamps
    end
    add_index :games, :game_token, unique: true
  end
end
