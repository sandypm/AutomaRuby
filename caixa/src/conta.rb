

class Conta
    attr_accessor :saldo,:retorno

    def initialize(saldo)
        @saldo = saldo
    end

    def valor(saque)
        if saque > @saldo
            @retorno = "Saldo insuficiente para saque :("
        elsif saque > 700
            @retorno = "Limite máximo por saque é de R$ 700"
            else
            @saldo -= saque
            @retorno = "Saque com sucesso."
            end
        end
    end
end