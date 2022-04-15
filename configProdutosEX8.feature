            #language: pt;


            Funcionalidade: Configurar produtos

            Como cliente da Ebac-Shop
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Adicionar 11 produtos diferentes
            Dado Que eu tenha adicionado 10 produtos diferentes
            Quando Eu adicionar mais um produto ao carrinho
            Então Então deve exibir uma mensagem de alerta "Você só pode adicionar até 10 produtos diferentes"
            E O produto não aparecerá no carrinho

            Cenário: Limpando os campos obrigatórios do produto
            Dado Que eu tenha selecionado a cor, o tamanho e a quantidade do produto
            Quando Eu clicar no botão "Limpar"
            Então Deverá voltar ao estado original do produto, apagando a cor, o tamanho e a quantidade

            Cenário: Adicionar o produto ao carrinho
            Dado Que eu tenha que selecionar a cor, o tamanho e a quantidade do produto
            Quando Eu adicionar ao carrinho
            Então Então deve exibir uma mensagem de sucesso "Item adicionado com sucesso"
            E O produto deverá aparecer no meu carrinho

         
