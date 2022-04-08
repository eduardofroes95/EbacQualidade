#language pt;

Funcionalidade: Cadastro na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Cenario: Cadastrando apenas com campos obrigatórios
        Dado Que eu tenha preenchindo todos os campos considerados obrigatórios (possuem asterisco)
        Quando Clicar em "Finalizar compra"
        Então Deve aparecer uma mensagem de sucesso "Parabéns, a sua compra foi finalizada com sucesso"

    Cenario: Cadastrando e-mail com formato inválido
        Dado Que eu tenha preenchindo o campo de e-mail sem o "@"
        Quando Passar para o próximo campo
        Então Deve aparecer uma mensagem de alerta "Por favor, digite um e-mail válido"
