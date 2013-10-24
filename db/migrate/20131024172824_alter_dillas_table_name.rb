class AlterDillasTableName < ActiveRecord::Migration
  def change
    rename_table(:dillas, :orders)
  end
end
