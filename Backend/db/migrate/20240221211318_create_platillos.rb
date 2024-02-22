class CreatePlatillos < ActiveRecord::Migration[7.1]
  def change
    create_table :platillos do |t|
      t.string :oferta
      t.string :imgPlato
      t.string :icono
      t.string :nombre
      t.integer :tiempo
      t.integer :precio
      t.string :descripcion

      t.timestamps
    end
  end
end
