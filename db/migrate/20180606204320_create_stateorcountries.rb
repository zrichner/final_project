class CreateStateorcountries < ActiveRecord::Migration
  def change
    create_table :stateorcountries do |t|
      t.string :name
      t.integer :region_id

      t.timestamps

    end
  end
end
