class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.string :q_who
      t.string :q_what
      t.string :q_where
      t.string :q_when
      t.string :q_why
      t.string :a_who
      t.string :a_what
      t.string :a_where
      t.string :a_when
      t.string :a_why
      t.integer :player_id
      t.integer :game_id

      t.timestamps
    end
  end
end
