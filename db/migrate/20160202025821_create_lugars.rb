class CreateLugars < ActiveRecord::Migration
  def change
    create_table :lugars do |t|
      t.string :nome
      t.integer :latitude
      t.integer :longitude

      t.timestamps null: false
    end
  end
end
