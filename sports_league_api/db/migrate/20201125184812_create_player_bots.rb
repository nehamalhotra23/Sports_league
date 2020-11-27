class CreatePlayerBots < ActiveRecord::Migration[5.2]
  def change
    create_table :player_bots do |t|
      t.string :name
      t.integer :speed
      t.integer :strength
      t.integer :agility
      t.string :designation
      t.integer :team_id
      t.timestamps

    end
  end
end
