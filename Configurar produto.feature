            #language: pt

            Funcionalidade: configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Para escolher a quantidade e depois inserir no carrinho

            Contexto:
            Dado que eu acesse a pagina EBAC-shop

            Cenario: Colocar o produto no carrinho
            Quando o usuario clicar o produto que deseja
            E escolher uma cor e selecionar o tamanho para o produto
            Então deve aparecer uma opção lhe mostrando quantas unidades estão disponiveis  para adicionar ao carrinho

            Cenario: Exceder o limite de 10 produtos por venda
            Quando o usuario tentar comprar mais que 10 produtos de uma vez
            E quando já tiver 10 produtos na etapa de venda e tentar comprar mais
            Então o sistema deve exibir a mensagem "Limite compras excedido"

            Cenario: Mudar as escolhas de tamanho e cor
            Quando o usuario mudar de idéia sobre o tamanho ou cor do produto que deseja
            E clicar na opção "limpar"
            Então ele deve resetar todas as alterações que ele realizou na escolha do produto

            Esquema do Cenário: Seleção de cor e tamnho
            Quando o usuario selecionar o <tamanho>
            E também a <cor>
            Então deve aparecer a opção <disponiveis> 

            Exemplos:
            | tamanho | cor    | disponiveis |
            | S       | blue   | 1           |
            | M       | orange | 8           |
            | L       | red    | 2           |
            | XS      | green  | 5           |
            | XL      | black  | 4           |
