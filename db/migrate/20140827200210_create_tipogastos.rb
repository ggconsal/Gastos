class CreateTipogastos < ActiveRecord::Migration
  def change
    create_table :tipogastos do |t|
      t.string :tga_desc

      t.timestamps
    end
  end
end
