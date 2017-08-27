class AddGaToCopenometro < ActiveRecord::Migration[5.1]
  def change
    add_column :copenometros, :Ga, :integer
  end
end
