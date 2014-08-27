class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :usu_nombre
      t.string :usu_usuario
      t.string :usu_clave

      t.timestamps
    end
  end
end
