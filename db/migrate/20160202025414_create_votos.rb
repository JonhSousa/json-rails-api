class CreateVotos < ActiveRecord::Migration
  def change
    create_table :votos do |t|
      t.references :lugar, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
