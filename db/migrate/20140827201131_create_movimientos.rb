class CreateMovimientos < ActiveRecord::Migration
  def change
    create_table :movimientos do |t|
      t.date :mov_fecha
      t.decimal :mov_importe
      t.text :mov_obs
      t.integer :mov_lote
      t.references :subrubro, index: true
      t.references :tipogasto, index: true
      t.references :tipomov, index: true
      t.references :formapago, index: true
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
