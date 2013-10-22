class CreateTableDillasIngredients < ActiveRecord::Migration
  def change
    create_table :dillas_ingredients, id: false do |t|
      t.integer :dilla_id
      t.integer :ingredient_id
    end
  end
end
