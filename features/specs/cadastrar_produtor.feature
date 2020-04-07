#language: pt
@login
@deslogar
@tag_cadastrar_produtor
Funcionalidade: Criar novo produtor
  Testar criação de novo produtor

  Esquema do Cenario: Cadastro de produtores
    Dado que os dados do produtor sejam <nome> <estado_civil>
    Quando cadastrar um produtor
    Entao verificar se foi cadastrado
    E excluir produtor
    E verificar se o produtor foi excluido
    Exemplos:   

    |nome                                           |estado_civil |
    |"Rafael Emanuel Elias da Paz"                  |"Casado"     |
    |"Benedito Danilo Silva"                        |"Solteiro"   |
    |"Erick Nelson da Paz"                          |"Divorciado" |
    |"Catarina Jéssica Nascimento"                  |"Viúvo"      |
    |"André e Mariane Buffet me"                    |""           |
    |"Regina e Carlos Eduardo Casa Noturna Ltda"    |""           |

