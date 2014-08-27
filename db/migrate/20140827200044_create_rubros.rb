class CreateRubros < ActiveRecord::Migration
  def change
    create_table :rubros do |t|
      t.string :rub_desc
      t.boolean :rub_suma

      t.timestamps
    end
  end
end
