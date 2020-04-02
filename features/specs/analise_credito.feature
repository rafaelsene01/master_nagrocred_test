#language: pt
@login
@deslogar
@tag_analise_credito
Funcionalidade: Pedido de Análise de Crédito
  Criar um produtor
  Fazer um pedido basido e validar este pedido
  Excluir produtor no final

  Esquema do Cenario: Fazer um pedido de análise de crédito com sucesso.
    Dado que os dados do produtor para pedido de analise sejam <cpf> <estado_civil>
    Quando cadastrar um produtor
    Entao verificar se foi cadastrado
    E abrir form de pedido de analise de credito
    E selecionar produtor no campo de adicionar produtor
    E selecionar consulta basica
    E confirmar a solicitação de analise
    E ir para pagina de listagem de analises e verificar se foi criada
    E excluir produtor
    E verificar se o produtor foi excluido
    Exemplos:   

    |cpf             |estado_civil |
    |"16251734400"   |"Casado"     |
    # |"90592202429"   |"Solteiro"   |
    # |"13019303427"   |"Divorciado" |
    # |"46019379493"   |"Viúvo"      |
    # |"05784016000156"|""           |
    # |"02380872000158"|""           |