class CreatePlayerbots < ActiveRecord::Migration[5.2]
  def change
    create_table :playerbots do |t|
      t.string :name
      t.integer :speed
      t.integer :strength
      t.integer :agility
      t.column(:team_id, :integer)


      t.timestamps
    end
  end
end
