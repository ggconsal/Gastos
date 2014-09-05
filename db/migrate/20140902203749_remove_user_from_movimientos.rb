class RemoveUserFromMovimientos < ActiveRecord::Migration
def change
    remove_column :movimientos, :usuario_id
  end
end
