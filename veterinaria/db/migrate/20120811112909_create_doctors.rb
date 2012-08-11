class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.references :Estado
      t.references :Users

      t.timestamps
    end
    add_index :doctors, :Estado_id
    add_index :doctors, :Users_id
  end
end
