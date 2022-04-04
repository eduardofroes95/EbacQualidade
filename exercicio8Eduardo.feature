Feature: Configurar produtos

    Como cliente da Ebac-Shop
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Scenario Outline: Scenario Outline name: Adicionar o produto ao carrinho
        Given Que eu tenha selecionado a <cor>, o <tamanho> e a <quantidade> do produto
        When Eu adicionar ao carrinho
        Then Então deve exibir uma mensagem de sucesso "Item adicionado com sucesso"
        And O produto deverá aparecer no meu carrinho

        Examples:
            | Cor     | Tamanho | Quantidade |
            | Azul    | M       | 10         |
            | Amarelo |         | 15         |
            | Preto   | M       | 5          |

    Scenario Outline: Scenario Outline name: Adicionar 11 produtos diferentes
        Given Que eu tenha adicionado 10 produtos diferentes
        When Eu adicionar mais um produto ao carrinho
        Then Então deve exibir uma mensagem de alerta "Você só pode adicionar até 10 produtos diferentes"
        And O produto não aparecerá no carrinho

        Examples:
            | Cor     | Tamanho | Quantidade |
            | Azul    | M       | 10         |
            | Amarelo |         | 15         |
            | Preto   | M       | 5          |

    Scenario Outline: Scenario Outline name: Limpando os campos obrigatórios do produto
        Given Que eu tenha selecionado a <cor>, o <tamanho> e a <quantidade> do produto
        When Eu clicar no botão "Limpar"
        Then Deverá voltar ao estado original do produto, apagando a <cor>, o <tamanho> e a <quantidade>

        Examples:
            | Cor     | Tamanho | Quantidade |
            | Azul    | M       | 10         |
            | Amarelo |         | 15         |
            | Preto   | M       | 5          |

Feature: Login na plataforma

    Como cliente da Ebac-Shop
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Scenario Outline: Scenario Outline name: Login válido
        Given Que eu insira o <Login> "Joao@ebac.com" e a <senha> "ebac123456"
        When Eu clicar em "Login"
        Then Devo ser direcionado para tela de checkout

        Examples:
            | Login         | Senha      | Resultado |
            | Joao@ebac.com | ebac123456 | Válido    |
            | 1234@ebac.com | ebac123456 | Inválido  |
            | Joao@ebac.com | 123456     | Inválido  |

    Scenario: Login inválido
        Given Que eu insira os dados do <Login> ou <senha> incorretos
        When Eu clicar em "Login"
        Then Deve exibir uma mensagem de alerta "Usuário ou senha incorretos"


Feature: Cadastro na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Scenario: Cadastrando apenas com campos obrigatórios
        Given Que eu tenha preenchindo todos os campos considerados obrigatórios (possuem asterisco)
        When Eu clicar em "Finalizar compra"
        Then Deve aparecer uma mensagem de sucesso "Parabéns, a sua compra foi finalizada com sucesso"

    Scenario: Cadastrando e-mail com formato inválido
        Given Que eu tenha preenchindo o campo de e-mail sem o "@"
        When Eu passar para o próximo campo
        Then Deve aparecer uma mensagem de alerta "Por favor, digite um e-mail válido"