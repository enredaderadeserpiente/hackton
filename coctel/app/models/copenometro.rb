class Copenometro < ApplicationRecord

	def calculo
		(self.ml*self.Grados2.to_f*0.8)/100
	end

	def calculo2
		peso = 72.9
		gr = calculo
		sangre = gr / (peso * 0.7)
	end

end
