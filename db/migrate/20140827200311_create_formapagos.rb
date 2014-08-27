class CreateFormapagos < ActiveRecord::Migration
  def change
    create_table :formapagos do |t|
      t.string :fpa_desc

      t.timestamps
    end
  end
end
