class CreateTipomovs < ActiveRecord::Migration
  def change
    create_table :tipomovs do |t|
      t.string :tmo_desc

      t.timestamps
    end
  end
end
