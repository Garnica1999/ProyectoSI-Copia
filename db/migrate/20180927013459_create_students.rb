class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :documento
      t.string :nombres
      t.string :apellidos
      t.integer :es_egresado
      t.string :clave
      t.decimal :promedio_carrera

      t.timestamps
    end
  end
end
