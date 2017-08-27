class AddUsuarioIdToCopenometro < ActiveRecord::Migration[5.1]
  def change
    add_reference :copenometros, :usuario, foreign_key: true
  end
end
