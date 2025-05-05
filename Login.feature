            #language: pt

            Funcionalidade: Tela de login
            Como aluno da EBAC
            Quero me autenticar
            Para vizualizar minhas notas

            Contexto:
            Dado que eu acesse a pagina de autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "Luiz@EBAC"
            E digitar a senha "EBAC@123"
            Então deve exibir uma mensagem de boas vindas "Olá Luiz"

            Cenário: Usuário inexistente
            Quando eu digitar o usuario "halax@EBAC"
            E digitar a senha "EBAC@123"
            Então deve exibir uma mensagem de alerta "usuário inexsistente"

            Cenário: Senha inválida
            Quando eu digitar o usuario "Luiz@EBAC.com.br"
            E digitar a senha "Luiz@123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválida"

            Esquema do Cenário: Autentificar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então a <mensagem> de sucesso

            Exemplos:
            | usuario        | senha         | memnsagem     |
            | "Luiz@EBAC"    | "EBAC@123"    | "Olá Luiz"    |
            | "Halax@EBAC"   | "luz@123"     | "Olá Halax"   |
            | "Richard@EBAC" | "Brunett@123" | "Olá Richard" |
            | "Ventura@EBAC" | "Ventura@123" | "Olá Luiz"    |


