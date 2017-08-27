class Usuario < ApplicationRecord
  has_many :copenometros
  validates :genero, :peso, :edad, :horas_tomando, presence: true

  def factor_sexo
    if genero == "masculino"
      return 0.7
    else
      return 0.6
    end
  end

  def alcohol_en_sangre
    copenometros.inject(0) do |suma, c|
      suma + c.gramos_alcoholico / (peso * factor_sexo)
    end
  end

end
