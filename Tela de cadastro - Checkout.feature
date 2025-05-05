            #language: pt

            Funcionalidade: Tela de cadastro checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu tente fazer um cadastro na plataforma da EBAC-Shop

            Cenario:cadastro bem sucedido
            Quando eu preencher todos os campos obrigatórios
            E validar o email
            Então  deve aparecer a mensagem "cadastro bem sucedido"

            Cenario:email invalido
            Quando eu inserir um email
            E ele não estiver em um formato válido
            Então  então o sistema deve inserir a mensagem "email inválido"

            Cenario:Campo não preenchido
            Quando eu não preecher todos os campos
            E tentar realizar o cadastro
            Então  então o sistema deve exibir a mensagem de alerta "Campo não preenchido"

            Esquema do Cenário: Cadastrar multiplos usuários
            Quando eu preecher o campo <email>
            E o campo <senha>
            Então a <mensagem> de sucesso

            Exemplos:
            | usuario                 | senha         | memnsagem            |
            | "LuizEBAC@gmail.com"    | "EBAC@123"    | "Usuario cadastrado" |
            | "HalaxEBAC@gmail.com"   | "luz@123"     | "Usuario cadastrado" |
            | "RichardEBAC@gmail.com" | "Brunett@123" | "Usuario cadastrado" |
            | "VenturaEBAC@gmail.com" | "Ventura@123" | "Usuario cadastrado" |
