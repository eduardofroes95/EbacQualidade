            #language: pt;


            Funcionalidade: Login na plataforma

            Como cliente da Ebac-Shop
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Cenário: Login inválido
            Dado Que eu insira ou o login ou a senha incorretos
            Quando Eu clicar em "Login"
            Então Deve exibir uma mensagem de alerta "Usuário ou senha incorretos"

            Esquema do Cenário: Login válido
            Dado Que eu insira o <Login>  e a <Senha>
            Quando Eu clicar em "Login"
            Então Devo ser direcionado para tela de checkout com base no <resultado>

            Exemplos:
            | Login         | Senha      | Resultado |
            | Joao@ebac.com | ebac123456 | Válido    |
            | 1234@ebac.com | ebac123456 | Inválido  |
            | Joao@ebac.com | 123456     | Inválido  |
