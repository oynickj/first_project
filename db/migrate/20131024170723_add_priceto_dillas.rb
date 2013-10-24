class AddPricetoDillas < ActiveRecord::Migration
  def change
    add_column :dillas, :price, :decimal, :precision => 8, :scale => 2
  end
end
