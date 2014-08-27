class CreateSubrubros < ActiveRecord::Migration
  def change
    create_table :subrubros do |t|
      t.string :sru_desc
      t.references :rubro, index: true

      t.timestamps
    end
  end
end
