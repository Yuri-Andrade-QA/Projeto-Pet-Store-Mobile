#language: pt

Funcionalidade: Consulta de Produto

            Contexto: Navegando pelo site
            Dado que eu esteja na tela inicial do aplicativo
            @lista
            Cenario: Consultar um produto com Sucesso

            Quando faço uma consulta por ração e seleciono o terceiro produto da lista
            Então deve ser exibido o titulo "Ração Golden Duo para Cães Adultos Sabor Salmão com Ervas e Cordeiro com Arroz - 15kg" 
            E o preço normal "154,90"
            E o preço para assinantes "139,41"
            Quando adiciono ao carrinho 
            Entao as caracteristicas devem continuar as mesmas



Esquema do Cenario: Consultando Lista de Produtos com Sucesso

            Dado que <codigo> é um novo produto
            Quando faço consultas por produto
            Então devo ver as caracteristicas do produto
            Quando adiciono ao carrinho 
            Então as caracteristicas devem continuar identicas

            Exemplos:
            | codigo      |
            | "ração"     |
            | "pestisco"  |
            | "tapete"    |
            | "remédio"   |
            | "brinquedo" |
            | "coleira"   |
            | "toalha"    |
            | "cama"      |
            | "comedouro" |
            | "roupa"     |
