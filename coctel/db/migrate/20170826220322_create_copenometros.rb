class CreateCopenometros < ActiveRecord::Migration[5.1]
  def change
    create_table :copenometros do |t|
      t.string :liquido
      t.integer :ml
      t.integer :grado

      t.timestamps
    end
  end
end
