class CreateRolefunctions < ActiveRecord::Migration
  def change
    create_table :rolefunctions do |t|
      t.string :name

      t.timestamps

    end
  end
end
