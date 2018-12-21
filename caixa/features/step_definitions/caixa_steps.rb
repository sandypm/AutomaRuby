require_relative '../../src/conta'

Dado("que eu tenho uma conta com {int} reais") do |saldo|
  @conta = Conta.new(saldo)
end

Quando("faço um saque no valor de {int} reais") do |saque| 
  @conta.valor(saque) 
end

Então("{int} reais será meu saldo final") do |saldofinal|
  expect(@conta.saldo).to eql saldofinal
end

Então("devo ver a mensagem {string}") do |mensagem|
  expect(@conta.retorno).to eql mensagem
end