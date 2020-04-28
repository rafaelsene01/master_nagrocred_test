#language: pt
@login
@deslogar
@tag_recebivel
Funcionalidade: Cadastro de Recebível
  Testar cadastro de recebível para um produtor
  Criação de um recebível e exclusão

  Esquema do Cenario: Cadastro de recebível com o minimo necessario
    Dado que os dados do produtor sejam <estado_civil>
    Quando cadastrar um produtor
    Entao verificar se foi cadastrado
    E selecionar produtor
    E verificar se esta no form de recebível do produtor
    E preencher campo com não possui
    E salvar recebível criado
    E ir para listagem de produtores
    E excluir produtor
    E verificar se o produtor foi excluido
    Exemplos:   
    |estado_civil |
    |"Casado"     | 
    # |"Solteiro"   |
    # |"Divorciado" | 
    # |"Viúvo"      |
    # |""           | 

  Esquema do Cenario: Cadastro de recebível com o minimo necessario
    Dado que os dados do produtor sejam <estado_civil>
    Quando cadastrar um produtor
    Entao verificar se foi cadastrado
    E selecionar produtor
    E verificar se esta no form de recebível do produtor
    E preencher todos campos requeridos de recebível <tipo_recebivel>
    E salvar recebível criado
    E excluir recebível criado
    E ir para listagem de produtores
    E excluir produtor
    E verificar se o produtor foi excluido
    Exemplos:   
    # tipo_recebivel |> Venda de Produção, Venda de Imóvel, Venda de Equipamento, Restituição
    |estado_civil |tipo_recebivel         |
    |"Casado"     |"Venda de Produção"    |  
    # |"Casado"     |"Venda de Imóvel"      | 
    # |"Casado"     |"Venda de Equipamento" | 
    # |"Casado"     |"Restituição"          |  
    # |"Solteiro"   |"Venda de Produção"    | 
    # |"Solteiro"   |"Venda de Imóvel"      | 
    # |"Solteiro"   |"Venda de Equipamento" | 
    # |"Solteiro"   |"Restituição"          |  
    # |"Divorciado" |"Venda de Produção"    | 
    # |"Divorciado" |"Venda de Imóvel"      | 
    # |"Divorciado" |"Venda de Equipamento" | 
    # |"Divorciado" |"Restituição"          |  
    # |"Viúvo"      |"Venda de Produção"    | 
    # |"Viúvo"      |"Venda de Imóvel"      | 
    # |"Viúvo"      |"Venda de Equipamento" | 
    # |"Viúvo"      |"Restituição"          |  
    # |""           |"Venda de Produção"    | 
    # |""           |"Venda de Imóvel"      | 
    # |""           |"Venda de Equipamento" | 
    # |""           |"Restituição"          |  


  Esquema do Cenario: Cadastro completo de recebível (low limit)
    Dado que os dados do produtor sejam <estado_civil>
    Quando cadastrar um produtor
    Entao verificar se foi cadastrado
    E selecionar produtor
    E verificar se esta no form de recebível do produtor
    E preencher todos campos requeridos de recebível <tipo_recebivel>
    E preencher todos campos não requeridos de recebível
    E salvar recebível criado
    E excluir recebível criado
    E ir para listagem de produtores
    E excluir produtor
    E verificar se o produtor foi excluido
    Exemplos:   
    # tipo_recebivel |> Venda de Produção, Venda de Imóvel, Venda de Equipamento, Restituição
    |estado_civil |tipo_recebivel         |
    |"Casado"     |"Venda de Produção"    |  
    # |"Casado"     |"Venda de Imóvel"      | 
    # |"Casado"     |"Venda de Equipamento" | 
    # |"Casado"     |"Restituição"          |  
    # |"Solteiro"   |"Venda de Produção"    | 
    # |"Solteiro"   |"Venda de Imóvel"      | 
    # |"Solteiro"   |"Venda de Equipamento" | 
    # |"Solteiro"   |"Restituição"          |  
    # |"Divorciado" |"Venda de Produção"    | 
    # |"Divorciado" |"Venda de Imóvel"      | 
    # |"Divorciado" |"Venda de Equipamento" | 
    # |"Divorciado" |"Restituição"          |  
    # |"Viúvo"      |"Venda de Produção"    | 
    # |"Viúvo"      |"Venda de Imóvel"      | 
    # |"Viúvo"      |"Venda de Equipamento" | 
    # |"Viúvo"      |"Restituição"          |  
    # |""           |"Venda de Produção"    | 
    # |""           |"Venda de Imóvel"      | 
    # |""           |"Venda de Equipamento" | 
    # |""           |"Restituição"          | 
  