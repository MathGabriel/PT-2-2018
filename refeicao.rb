class Refeicao 
	@@total = 0
	@@res = Hash.new
	@@preco_total = 0.0
	def initialize(nome,tipo,descricao,preco,disponibilidade)
		@nome = nome
		@tipo = tipo
		@descricao = descricao
		@preco = preco
		@disponibilidade = disponibilidade
		@@total = @@total + 1
		@@res[@nome] ||= 0
		@@res[@nome] += 1
		@@preco_total += @preco.to_f
	end

	def printar
		puts "O total de refeicao que foram pedidas: #{@@total}"
		puts "Refeicao e quantidade de cada: #{@@res}"
		puts "Total a se pagar: R$ #{@@preco_total}"
	end
end

my_macarrao = Refeicao.new("macarrao","massa","muito gostoso","12,00",true)
my_lasanha = Refeicao.new("lasanha de ricota","massa","muito deliciosa","20,00",true)
my_frango = Refeicao.new("frango do ru","carne","gostinho de pombo","5,20",true)

my_macarrao.printar