class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :genero
      t.integer :peso
      t.integer :edad
      t.integer :horas_tomando

      t.timestamps
    end
  end
end
