class CreateDillasTable < ActiveRecord::Migration
   def change
    create_table :dillas do |t|
      t.string :name
      t.integer :customer_id
      t.timestamps
    end
  end
end
