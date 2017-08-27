class Copenometro < ApplicationRecord
  belongs_to :usuario

	def gramos_alcoholico
		(self.ml * self.Grados2 * 0.8) / 100
	end

	def calculo2
		peso = 72.9
		gr = calculo
		sangre = gr / (peso * 0.7)
	end

end
