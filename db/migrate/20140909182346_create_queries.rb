class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.date :con_fechad
      t.date :con_fechah
      t.text :con_descripcion
      t.references :user, index: true

      t.timestamps
    end
  end
end
