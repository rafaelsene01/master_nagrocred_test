#language: pt
@login
@deslogar
@tag_cadastrar_produtor
Funcionalidade: Criar novo produtor
  Testar criação de novo produtor

  Esquema do Cenario: Cadastro de produtores
    Dado que os dados do produtor sejam <estado_civil>
    Quando cadastrar um produtor
    Entao verificar se foi cadastrado
    E excluir produtor
    E verificar se o produtor foi excluido
    Exemplos:   

    |estado_civil |
    |"Casado"     |
    |"Solteiro"   |
    |"Divorciado" |
    |"Viúvo"      |
    |""           |
