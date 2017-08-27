class AddGrados2ToCopenometros < ActiveRecord::Migration[5.1]
  def change
    add_column :copenometros, :Grados2, :float
  end
end
