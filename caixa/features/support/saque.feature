#language:pt

Funcionalidade: Saque no caixa eletrônico
    Sendo um cliente que é correntista do banco
    Posso sacar dinheiro
    Para poder comprar em lugares que não aceitam débito ou crédito
        mesmo estando no século 21

   
    Cenário: Saque

        Dado que eu tenho uma conta com 1000 reais
        Quando faço um saque no valor de 200 reais
        Então 800 reais será meu saldo final 
        E devo ver a mensagem "Saque com sucesso."

    @happiness
    Cenário: Cliente sem saldo

        Dado que eu tenho uma conta com 0 reais
        Quando faço um saque no valor de 100 reais
        Então 0 reais será meu saldo final
        E devo ver a mensagem "Saldo insuficiente para saque :("
    
    Cenário: Saldo insuficiente

        Dado que eu tenho uma conta com 500 reais
        Quando faço um saque no valor de 700 reais
        Então 500 reais será meu saldo final
        E devo ver a mensagem "Saldo insuficiente para saque :("

    Cenário: Limite por saque

        Dado que eu tenho uma conta com 1000 reais
        Quando faço um saque no valor de 701 reais
        Então 1000 reais será meu saldo final
        E devo ver a mensagem "Limite máximo por saque é de R$ 700"