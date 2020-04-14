#language: pt
@login
@deslogar
@tag_endividamento
Funcionalidade: Cadastro de endividamento
  Testar cadastro de endividamento para um produtor
  Criação de um endividamento e exclusão

  Esquema do Cenario: Cadastro de endividamento com o minimo necessario
    Dado que os dados do produtor sejam <estado_civil>
    Quando cadastrar um produtor
    Entao verificar se foi cadastrado
    E selecionar produtor
    E verificar se esta no form de endividamento do produtor
    E preencher todos campos requeridos de endividamentos <tipo_endividamento> <credor> <forma_pagamento>
    E salvar endividamento criado
    E excluir endividamento criado
    E ir para listagem de produtores
    E excluir produtor
    E verificar se o produtor foi excluido
    Exemplos:   
    # tipo_endividamento |> Custeio, Investimento, Arrendamento, Duplicata, CPR
    # credor |> Banco, Pessoa Física, Fornecedor
    # forma_pagamento |> Mensal, Trimestral, Anual, Prazo Safra, Semestral
    |estado_civil |tipo_endividamento |credor             |forma_pagamento |
    # |"Casado"     |"Custeio"          |"Banco"            |"Mensal"        |
    # |"Casado"     |"Custeio"          |"Banco"            |"Trimestral"    |
    # |"Casado"     |"Custeio"          |"Banco"            |"Anual"         |
    # |"Casado"     |"Custeio"          |"Banco"            |"Semestral"     |
    # |"Casado"     |"Custeio"          |"Pessoa Física"    |"Mensal"        |
    # |"Casado"     |"Custeio"          |"Pessoa Física"    |"Trimestral"    |
    # |"Casado"     |"Custeio"          |"Pessoa Física"    |"Anual"         |
    # |"Casado"     |"Custeio"          |"Pessoa Física"    |"Semestral"     |
    # |"Casado"     |"Custeio"          |"Fornecedor"       |"Mensal"        |
    # |"Casado"     |"Custeio"          |"Fornecedor"       |"Trimestral"    |
    # |"Casado"     |"Custeio"          |"Fornecedor"       |"Anual"         |
    # |"Casado"     |"Custeio"          |"Fornecedor"       |"Semestral"     |
    # |"Casado"     |"Investimento"     |"Banco"            |"Mensal"        |
    # |"Casado"     |"Investimento"     |"Banco"            |"Trimestral"    |
    # |"Casado"     |"Investimento"     |"Banco"            |"Anual"         |
    # |"Casado"     |"Investimento"     |"Banco"            |"Semestral"     |
    # |"Casado"     |"Investimento"     |"Pessoa Física"    |"Mensal"        |
    # |"Casado"     |"Investimento"     |"Pessoa Física"    |"Trimestral"    |
    # |"Casado"     |"Investimento"     |"Pessoa Física"    |"Anual"         |
    # |"Casado"     |"Investimento"     |"Pessoa Física"    |"Semestral"     |
    # |"Casado"     |"Investimento"     |"Fornecedor"       |"Mensal"        |
    # |"Casado"     |"Investimento"     |"Fornecedor"       |"Trimestral"    |
    # |"Casado"     |"Investimento"     |"Fornecedor"       |"Anual"         |
    # |"Casado"     |"Investimento"     |"Fornecedor"       |"Semestral"     |
    # |"Casado"     |"Arrendamento"     |"Banco"            |"Mensal"        |
    # |"Casado"     |"Arrendamento"     |"Banco"            |"Trimestral"    |
    # |"Casado"     |"Arrendamento"     |"Banco"            |"Anual"         |
    # |"Casado"     |"Arrendamento"     |"Banco"            |"Semestral"     |
    # |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |
    # |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |
    # |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Anual"         |
    # |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |
    # |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Mensal"        |
    # |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |
    # |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Anual"         |
    # |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Semestral"     |
    # |"Casado"     |"Duplicata"        |"Banco"            |"Mensal"        |
    # |"Casado"     |"Duplicata"        |"Banco"            |"Trimestral"    |
    # |"Casado"     |"Duplicata"        |"Banco"            |"Anual"         |
    # |"Casado"     |"Duplicata"        |"Banco"            |"Semestral"     |
    # |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Mensal"        |
    # |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |
    # |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Anual"         |
    # |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Semestral"     |
    # |"Casado"     |"Duplicata"        |"Fornecedor"       |"Mensal"        |
    # |"Casado"     |"Duplicata"        |"Fornecedor"       |"Trimestral"    |
    # |"Casado"     |"Duplicata"        |"Fornecedor"       |"Anual"         |
    # |"Casado"     |"Duplicata"        |"Fornecedor"       |"Semestral"     |
    # |"Casado"     |"CPR"              |"Banco"            |"Mensal"        |
    # |"Casado"     |"CPR"              |"Banco"            |"Trimestral"    |
    # |"Casado"     |"CPR"              |"Banco"            |"Anual"         |
    # |"Casado"     |"CPR"              |"Banco"            |"Semestral"     |
    # |"Casado"     |"CPR"              |"Pessoa Física"    |"Mensal"        |
    # |"Casado"     |"CPR"              |"Pessoa Física"    |"Trimestral"    |
    # |"Casado"     |"CPR"              |"Pessoa Física"    |"Anual"         |
    # |"Casado"     |"CPR"              |"Pessoa Física"    |"Semestral"     |
    # |"Casado"     |"CPR"              |"Fornecedor"       |"Mensal"        |
    # |"Casado"     |"CPR"              |"Fornecedor"       |"Trimestral"    |
    # |"Casado"     |"CPR"              |"Fornecedor"       |"Anual"         |
    # |"Casado"     |"CPR"              |"Fornecedor"       |"Semestral"     |
    # |"Solteiro"   |"Custeio"          |"Banco"            |"Mensal"        |
    # |"Solteiro"   |"Custeio"          |"Banco"            |"Trimestral"    |
    # |"Solteiro"   |"Custeio"          |"Banco"            |"Anual"         |
    # |"Solteiro"   |"Custeio"          |"Banco"            |"Semestral"     |
    # |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Mensal"        |
    # |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Trimestral"    |
    # |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Anual"         |
    # |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Semestral"     |
    # |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Mensal"        |
    # |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Trimestral"    |
    # |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Anual"         |
    # |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Semestral"     |
    # |"Solteiro"   |"Investimento"     |"Banco"            |"Mensal"        |
    # |"Solteiro"   |"Investimento"     |"Banco"            |"Trimestral"    |
    # |"Solteiro"   |"Investimento"     |"Banco"            |"Anual"         |
    # |"Solteiro"   |"Investimento"     |"Banco"            |"Semestral"     |
    # |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Mensal"        |
    # |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Trimestral"    |
    # |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Anual"         |
    # |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Semestral"     |
    # |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Mensal"        |
    # |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Trimestral"    |
    # |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Anual"         |
    # |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Semestral"     |
    # |"Solteiro"   |"Arrendamento"     |"Banco"            |"Mensal"        |
    # |"Solteiro"   |"Arrendamento"     |"Banco"            |"Trimestral"    |
    # |"Solteiro"   |"Arrendamento"     |"Banco"            |"Anual"         |
    # |"Solteiro"   |"Arrendamento"     |"Banco"            |"Semestral"     |
    # |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |
    # |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |
    # |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Anual"         |
    # |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |
    # |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Mensal"        |
    # |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |
    # |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Anual"         |
    # |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Semestral"     |
    # |"Solteiro"   |"Duplicata"        |"Banco"            |"Mensal"        |
    # |"Solteiro"   |"Duplicata"        |"Banco"            |"Trimestral"    |
    # |"Solteiro"   |"Duplicata"        |"Banco"            |"Anual"         |
    # |"Solteiro"   |"Duplicata"        |"Banco"            |"Semestral"     |
    # |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Mensal"        |
    # |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |
    # |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Anual"         |
    # |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Semestral"     |
    # |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Mensal"        |
    # |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Trimestral"    |
    # |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Anual"         |
    # |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Semestral"     |
    # |"Solteiro"   |"CPR"              |"Banco"            |"Mensal"        |
    # |"Solteiro"   |"CPR"              |"Banco"            |"Trimestral"    |
    # |"Solteiro"   |"CPR"              |"Banco"            |"Anual"         |
    # |"Solteiro"   |"CPR"              |"Banco"            |"Semestral"     |
    # |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Mensal"        |
    # |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Trimestral"    |
    # |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Anual"         |
    # |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Semestral"     |
    # |"Solteiro"   |"CPR"              |"Fornecedor"       |"Mensal"        |
    # |"Solteiro"   |"CPR"              |"Fornecedor"       |"Trimestral"    |
    # |"Solteiro"   |"CPR"              |"Fornecedor"       |"Anual"         |
    # |"Solteiro"   |"CPR"              |"Fornecedor"       |"Semestral"     |
    # |"Divorciado" |"Custeio"          |"Banco"            |"Mensal"        |
    # |"Divorciado" |"Custeio"          |"Banco"            |"Trimestral"    |
    # |"Divorciado" |"Custeio"          |"Banco"            |"Anual"         |
    # |"Divorciado" |"Custeio"          |"Banco"            |"Semestral"     |
    # |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Mensal"        |
    # |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Trimestral"    |
    # |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Anual"         |
    # |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Semestral"     |
    # |"Divorciado" |"Custeio"          |"Fornecedor"       |"Mensal"        |
    # |"Divorciado" |"Custeio"          |"Fornecedor"       |"Trimestral"    |
    # |"Divorciado" |"Custeio"          |"Fornecedor"       |"Anual"         |
    # |"Divorciado" |"Custeio"          |"Fornecedor"       |"Semestral"     |
    # |"Divorciado" |"Investimento"     |"Banco"            |"Mensal"        |
    # |"Divorciado" |"Investimento"     |"Banco"            |"Trimestral"    |
    # |"Divorciado" |"Investimento"     |"Banco"            |"Anual"         |
    # |"Divorciado" |"Investimento"     |"Banco"            |"Semestral"     |
    # |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Mensal"        |
    # |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Trimestral"    |
    # |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Anual"         |
    # |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Semestral"     |
    # |"Divorciado" |"Investimento"     |"Fornecedor"       |"Mensal"        |
    # |"Divorciado" |"Investimento"     |"Fornecedor"       |"Trimestral"    |
    # |"Divorciado" |"Investimento"     |"Fornecedor"       |"Anual"         |
    # |"Divorciado" |"Investimento"     |"Fornecedor"       |"Semestral"     |
    # |"Divorciado" |"Arrendamento"     |"Banco"            |"Mensal"        |
    # |"Divorciado" |"Arrendamento"     |"Banco"            |"Trimestral"    |
    # |"Divorciado" |"Arrendamento"     |"Banco"            |"Anual"         |
    # |"Divorciado" |"Arrendamento"     |"Banco"            |"Semestral"     |
    # |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |
    # |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |
    # |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Anual"         |
    # |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |
    # |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Mensal"        |
    # |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |
    # |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Anual"         |
    # |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Semestral"     |
    # |"Divorciado" |"Duplicata"        |"Banco"            |"Mensal"        |
    # |"Divorciado" |"Duplicata"        |"Banco"            |"Trimestral"    |
    # |"Divorciado" |"Duplicata"        |"Banco"            |"Anual"         |
    # |"Divorciado" |"Duplicata"        |"Banco"            |"Semestral"     |
    # |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Mensal"        |
    # |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |
    # |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Anual"         |
    # |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Semestral"     |
    # |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Mensal"        |
    # |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Trimestral"    |
    # |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Anual"         |
    # |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Semestral"     |
    # |"Divorciado" |"CPR"              |"Banco"            |"Mensal"        |
    # |"Divorciado" |"CPR"              |"Banco"            |"Trimestral"    |
    # |"Divorciado" |"CPR"              |"Banco"            |"Anual"         |
    # |"Divorciado" |"CPR"              |"Banco"            |"Semestral"     |
    # |"Divorciado" |"CPR"              |"Pessoa Física"    |"Mensal"        |
    # |"Divorciado" |"CPR"              |"Pessoa Física"    |"Trimestral"    |
    # |"Divorciado" |"CPR"              |"Pessoa Física"    |"Anual"         |
    # |"Divorciado" |"CPR"              |"Pessoa Física"    |"Semestral"     |
    # |"Divorciado" |"CPR"              |"Fornecedor"       |"Mensal"        |
    # |"Divorciado" |"CPR"              |"Fornecedor"       |"Trimestral"    |
    # |"Divorciado" |"CPR"              |"Fornecedor"       |"Anual"         |
    # |"Divorciado" |"CPR"              |"Fornecedor"       |"Semestral"     |
    # |"Viúvo"      |"Custeio"          |"Banco"            |"Mensal"        |
    # |"Viúvo"      |"Custeio"          |"Banco"            |"Trimestral"    |
    # |"Viúvo"      |"Custeio"          |"Banco"            |"Anual"         |
    # |"Viúvo"      |"Custeio"          |"Banco"            |"Semestral"     |
    # |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Mensal"        |
    # |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Trimestral"    |
    # |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Anual"         |
    # |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Semestral"     |
    # |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Mensal"        |
    # |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Trimestral"    |
    # |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Anual"         |
    # |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Semestral"     |
    # |"Viúvo"      |"Investimento"     |"Banco"            |"Mensal"        |
    # |"Viúvo"      |"Investimento"     |"Banco"            |"Trimestral"    |
    # |"Viúvo"      |"Investimento"     |"Banco"            |"Anual"         |
    # |"Viúvo"      |"Investimento"     |"Banco"            |"Semestral"     |
    # |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Mensal"        |
    # |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Trimestral"    |
    # |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Anual"         |
    # |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Semestral"     |
    # |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Mensal"        |
    # |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Trimestral"    |
    # |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Anual"         |
    # |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Semestral"     |
    # |"Viúvo"      |"Arrendamento"     |"Banco"            |"Mensal"        |
    # |"Viúvo"      |"Arrendamento"     |"Banco"            |"Trimestral"    |
    # |"Viúvo"      |"Arrendamento"     |"Banco"            |"Anual"         |
    # |"Viúvo"      |"Arrendamento"     |"Banco"            |"Semestral"     |
    # |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |
    # |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |
    # |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Anual"         |
    # |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |
    # |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Mensal"        |
    # |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |
    # |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Anual"         |
    # |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Semestral"     |
    # |"Viúvo"      |"Duplicata"        |"Banco"            |"Mensal"        |
    # |"Viúvo"      |"Duplicata"        |"Banco"            |"Trimestral"    |
    # |"Viúvo"      |"Duplicata"        |"Banco"            |"Anual"         |
    # |"Viúvo"      |"Duplicata"        |"Banco"            |"Semestral"     |
    # |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Mensal"        |
    # |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |
    # |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Anual"         |
    # |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Semestral"     |
    # |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Mensal"        |
    # |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Trimestral"    |
    # |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Anual"         |
    # |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Semestral"     |
    # |"Viúvo"      |"CPR"              |"Banco"            |"Mensal"        |
    # |"Viúvo"      |"CPR"              |"Banco"            |"Trimestral"    |
    # |"Viúvo"      |"CPR"              |"Banco"            |"Anual"         |
    # |"Viúvo"      |"CPR"              |"Banco"            |"Semestral"     |
    # |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Mensal"        |
    # |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Trimestral"    |
    # |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Anual"         |
    # |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Semestral"     |
    # |"Viúvo"      |"CPR"              |"Fornecedor"       |"Mensal"        |
    # |"Viúvo"      |"CPR"              |"Fornecedor"       |"Trimestral"    |
    # |"Viúvo"      |"CPR"              |"Fornecedor"       |"Anual"         |
    # |"Viúvo"      |"CPR"              |"Fornecedor"       |"Semestral"     |
    # |""           |"Custeio"          |"Banco"            |"Mensal"        |
    # |""           |"Custeio"          |"Banco"            |"Trimestral"    |
    # |""           |"Custeio"          |"Banco"            |"Anual"         |
    # |""           |"Custeio"          |"Banco"            |"Semestral"     |
    # |""           |"Custeio"          |"Pessoa Física"    |"Mensal"        |
    # |""           |"Custeio"          |"Pessoa Física"    |"Trimestral"    |
    # |""           |"Custeio"          |"Pessoa Física"    |"Anual"         |
    # |""           |"Custeio"          |"Pessoa Física"    |"Semestral"     |
    # |""           |"Custeio"          |"Fornecedor"       |"Mensal"        |
    # |""           |"Custeio"          |"Fornecedor"       |"Trimestral"    |
    # |""           |"Custeio"          |"Fornecedor"       |"Anual"         |
    # |""           |"Custeio"          |"Fornecedor"       |"Semestral"     |
    # |""           |"Investimento"     |"Banco"            |"Mensal"        |
    # |""           |"Investimento"     |"Banco"            |"Trimestral"    |
    # |""           |"Investimento"     |"Banco"            |"Anual"         |
    # |""           |"Investimento"     |"Banco"            |"Semestral"     |
    # |""           |"Investimento"     |"Pessoa Física"    |"Mensal"        |
    # |""           |"Investimento"     |"Pessoa Física"    |"Trimestral"    |
    # |""           |"Investimento"     |"Pessoa Física"    |"Anual"         |
    # |""           |"Investimento"     |"Pessoa Física"    |"Semestral"     |
    # |""           |"Investimento"     |"Fornecedor"       |"Mensal"        |
    # |""           |"Investimento"     |"Fornecedor"       |"Trimestral"    |
    # |""           |"Investimento"     |"Fornecedor"       |"Anual"         |
    # |""           |"Investimento"     |"Fornecedor"       |"Semestral"     |
    # |""           |"Arrendamento"     |"Banco"            |"Mensal"        |
    # |""           |"Arrendamento"     |"Banco"            |"Trimestral"    |
    # |""           |"Arrendamento"     |"Banco"            |"Anual"         |
    # |""           |"Arrendamento"     |"Banco"            |"Semestral"     |
    # |""           |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |
    # |""           |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |
    # |""           |"Arrendamento"     |"Pessoa Física"    |"Anual"         |
    # |""           |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |
    # |""           |"Arrendamento"     |"Fornecedor"       |"Mensal"        |
    # |""           |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |
    # |""           |"Arrendamento"     |"Fornecedor"       |"Anual"         |
    # |""           |"Arrendamento"     |"Fornecedor"       |"Semestral"     |
    # |""           |"Duplicata"        |"Banco"            |"Mensal"        |
    # |""           |"Duplicata"        |"Banco"            |"Trimestral"    |
    # |""           |"Duplicata"        |"Banco"            |"Anual"         |
    # |""           |"Duplicata"        |"Banco"            |"Semestral"     |
    # |""           |"Duplicata"        |"Pessoa Física"    |"Mensal"        |
    # |""           |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |
    # |""           |"Duplicata"        |"Pessoa Física"    |"Anual"         |
    # |""           |"Duplicata"        |"Pessoa Física"    |"Semestral"     |
    # |""           |"Duplicata"        |"Fornecedor"       |"Mensal"        |
    # |""           |"Duplicata"        |"Fornecedor"       |"Trimestral"    |
    # |""           |"Duplicata"        |"Fornecedor"       |"Anual"         |
    # |""           |"Duplicata"        |"Fornecedor"       |"Semestral"     |
    # |""           |"CPR"              |"Banco"            |"Mensal"        |
    # |""           |"CPR"              |"Banco"            |"Trimestral"    |
    # |""           |"CPR"              |"Banco"            |"Anual"         |
    # |""           |"CPR"              |"Banco"            |"Semestral"     |
    # |""           |"CPR"              |"Pessoa Física"    |"Mensal"        |
    # |""           |"CPR"              |"Pessoa Física"    |"Trimestral"    |
    # |""           |"CPR"              |"Pessoa Física"    |"Anual"         |
    # |""           |"CPR"              |"Pessoa Física"    |"Semestral"     |
    # |""           |"CPR"              |"Fornecedor"       |"Mensal"        |
    # |""           |"CPR"              |"Fornecedor"       |"Trimestral"    |
    # |""           |"CPR"              |"Fornecedor"       |"Anual"         |
    # |""           |"CPR"              |"Fornecedor"       |"Semestral"     |


  Esquema do Cenario: Cadastro completo de endividamento (low limit)
    Dado que os dados do produtor sejam <estado_civil>
    Quando cadastrar um produtor
    Entao verificar se foi cadastrado
    E selecionar produtor
    E verificar se esta no form de endividamento do produtor
    E preencher todos campos requeridos de endividamentos <tipo_endividamento> <credor> <forma_pagamento>
    E preencher todos campos não requeridos de endividamentos <tipo_garantia>
    E salvar endividamento criado
    E excluir endividamento criado
    E ir para listagem de produtores
    E excluir produtor
    E verificar se o produtor foi excluido
    Exemplos:   
    # tipo_endividamento |> Custeio, Investimento, Arrendamento, Duplicata, CPR
    # credor |> Banco, Pessoa Física, Fornecedor
    # forma_pagamento |> Mensal, Trimestral, Anual, Prazo Safra, Semestral
    # Tipo de garantia |> Alienação Fiduciária, Hipoteca, Penhor de Safra
    |estado_civil |tipo_endividamento |credor             |forma_pagamento |tipo_garantia           |
    |"Casado"     |"Custeio"          |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"Custeio"          |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"Custeio"          |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"Custeio"          |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"Investimento"     |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"Investimento"     |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"Investimento"     |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"Investimento"     |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"Duplicata"        |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"Duplicata"        |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"Duplicata"        |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"Duplicata"        |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"CPR"              |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"CPR"              |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"CPR"              |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"CPR"              |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"Custeio"          |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"Custeio"          |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"Custeio"          |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"Custeio"          |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"Investimento"     |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"Investimento"     |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"Investimento"     |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"Investimento"     |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"Arrendamento"     |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"Arrendamento"     |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"Arrendamento"     |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"Arrendamento"     |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"Duplicata"        |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"Duplicata"        |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"Duplicata"        |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"Duplicata"        |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"CPR"              |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"CPR"              |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"CPR"              |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"CPR"              |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Solteiro"   |"CPR"              |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Solteiro"   |"CPR"              |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Solteiro"   |"CPR"              |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Solteiro"   |"CPR"              |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"Custeio"          |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"Custeio"          |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"Custeio"          |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"Custeio"          |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"Custeio"          |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"Custeio"          |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"Custeio"          |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"Investimento"     |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"Investimento"     |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"Investimento"     |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"Investimento"     |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"Investimento"     |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"Investimento"     |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"Investimento"     |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"Arrendamento"     |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"Arrendamento"     |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"Arrendamento"     |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"Arrendamento"     |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"Duplicata"        |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"Duplicata"        |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"Duplicata"        |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"Duplicata"        |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"CPR"              |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"CPR"              |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"CPR"              |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"CPR"              |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"CPR"              |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"CPR"              |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"CPR"              |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Divorciado" |"CPR"              |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Divorciado" |"CPR"              |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Divorciado" |"CPR"              |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Divorciado" |"CPR"              |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"Custeio"          |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"Custeio"          |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"Custeio"          |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"Custeio"          |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"Investimento"     |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"Investimento"     |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"Investimento"     |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"Investimento"     |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"Arrendamento"     |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"Arrendamento"     |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"Arrendamento"     |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"Arrendamento"     |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"Duplicata"        |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"Duplicata"        |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"Duplicata"        |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"Duplicata"        |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"CPR"              |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"CPR"              |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"CPR"              |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"CPR"              |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |"Viúvo"      |"CPR"              |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |"Viúvo"      |"CPR"              |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |"Viúvo"      |"CPR"              |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |"Viúvo"      |"CPR"              |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"Custeio"          |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"Custeio"          |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"Custeio"          |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |""           |"Custeio"          |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"Custeio"          |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |""           |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"Custeio"          |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"Custeio"          |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |""           |"Custeio"          |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"Investimento"     |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"Investimento"     |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"Investimento"     |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |""           |"Investimento"     |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"Investimento"     |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |""           |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"Investimento"     |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"Investimento"     |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |""           |"Investimento"     |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"Arrendamento"     |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"Arrendamento"     |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"Arrendamento"     |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |""           |"Arrendamento"     |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |""           |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |""           |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"Duplicata"        |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"Duplicata"        |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"Duplicata"        |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |""           |"Duplicata"        |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |""           |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"Duplicata"        |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |""           |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"CPR"              |"Banco"            |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"CPR"              |"Banco"            |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"CPR"              |"Banco"            |"Anual"         |"Alienação Fiduciária"  |
    |""           |"CPR"              |"Banco"            |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"CPR"              |"Pessoa Física"    |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"CPR"              |"Pessoa Física"    |"Anual"         |"Alienação Fiduciária"  |
    |""           |"CPR"              |"Pessoa Física"    |"Semestral"     |"Alienação Fiduciária"  |
    |""           |"CPR"              |"Fornecedor"       |"Mensal"        |"Alienação Fiduciária"  |
    |""           |"CPR"              |"Fornecedor"       |"Trimestral"    |"Alienação Fiduciária"  |
    |""           |"CPR"              |"Fornecedor"       |"Anual"         |"Alienação Fiduciária"  |
    |""           |"CPR"              |"Fornecedor"       |"Semestral"     |"Alienação Fiduciária"  |

    |"Casado"     |"Custeio"          |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"Custeio"          |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"Custeio"          |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Casado"     |"Custeio"          |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"Investimento"     |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"Investimento"     |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"Investimento"     |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Casado"     |"Investimento"     |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"Duplicata"        |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"Duplicata"        |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"Duplicata"        |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Casado"     |"Duplicata"        |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"CPR"              |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"CPR"              |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"CPR"              |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Casado"     |"CPR"              |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"Custeio"          |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"Custeio"          |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"Custeio"          |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"Custeio"          |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"Investimento"     |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"Investimento"     |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"Investimento"     |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"Investimento"     |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"Arrendamento"     |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"Arrendamento"     |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"Arrendamento"     |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"Arrendamento"     |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"Duplicata"        |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"Duplicata"        |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"Duplicata"        |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"Duplicata"        |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"CPR"              |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"CPR"              |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"CPR"              |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"CPR"              |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Solteiro"   |"CPR"              |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Solteiro"   |"CPR"              |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Solteiro"   |"CPR"              |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Solteiro"   |"CPR"              |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"Custeio"          |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"Custeio"          |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"Custeio"          |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"Custeio"          |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"Custeio"          |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"Custeio"          |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"Custeio"          |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"Investimento"     |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"Investimento"     |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"Investimento"     |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"Investimento"     |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"Investimento"     |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"Investimento"     |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"Investimento"     |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"Arrendamento"     |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"Arrendamento"     |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"Arrendamento"     |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"Arrendamento"     |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"Duplicata"        |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"Duplicata"        |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"Duplicata"        |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"Duplicata"        |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"CPR"              |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"CPR"              |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"CPR"              |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"CPR"              |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"CPR"              |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"CPR"              |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"CPR"              |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Divorciado" |"CPR"              |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Divorciado" |"CPR"              |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Divorciado" |"CPR"              |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Divorciado" |"CPR"              |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"Custeio"          |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"Custeio"          |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"Custeio"          |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"Custeio"          |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"Investimento"     |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"Investimento"     |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"Investimento"     |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"Investimento"     |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"Arrendamento"     |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"Arrendamento"     |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"Arrendamento"     |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"Arrendamento"     |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"Duplicata"        |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"Duplicata"        |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"Duplicata"        |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"Duplicata"        |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"CPR"              |"Banco"            |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"CPR"              |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"CPR"              |"Banco"            |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"CPR"              |"Banco"            |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |"Viúvo"      |"CPR"              |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |"Viúvo"      |"CPR"              |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |"Viúvo"      |"CPR"              |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |"Viúvo"      |"CPR"              |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |""           |"Custeio"          |"Banco"            |"Mensal"        |"Hipoteca"              |
    |""           |"Custeio"          |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |""           |"Custeio"          |"Banco"            |"Anual"         |"Hipoteca"              |
    |""           |"Custeio"          |"Banco"            |"Semestral"     |"Hipoteca"              |
    |""           |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |""           |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |""           |"Custeio"          |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |""           |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |""           |"Custeio"          |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |""           |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |""           |"Custeio"          |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |""           |"Custeio"          |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |""           |"Investimento"     |"Banco"            |"Mensal"        |"Hipoteca"              |
    |""           |"Investimento"     |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |""           |"Investimento"     |"Banco"            |"Anual"         |"Hipoteca"              |
    |""           |"Investimento"     |"Banco"            |"Semestral"     |"Hipoteca"              |
    |""           |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |""           |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |""           |"Investimento"     |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |""           |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |""           |"Investimento"     |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |""           |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |""           |"Investimento"     |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |""           |"Investimento"     |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |""           |"Arrendamento"     |"Banco"            |"Mensal"        |"Hipoteca"              |
    |""           |"Arrendamento"     |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |""           |"Arrendamento"     |"Banco"            |"Anual"         |"Hipoteca"              |
    |""           |"Arrendamento"     |"Banco"            |"Semestral"     |"Hipoteca"              |
    |""           |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |""           |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |""           |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |""           |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |""           |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |""           |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |""           |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |""           |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |""           |"Duplicata"        |"Banco"            |"Mensal"        |"Hipoteca"              |
    |""           |"Duplicata"        |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |""           |"Duplicata"        |"Banco"            |"Anual"         |"Hipoteca"              |
    |""           |"Duplicata"        |"Banco"            |"Semestral"     |"Hipoteca"              |
    |""           |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |""           |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |""           |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |""           |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |""           |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |""           |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |""           |"Duplicata"        |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |""           |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Hipoteca"              |
    |""           |"CPR"              |"Banco"            |"Mensal"        |"Hipoteca"              |
    |""           |"CPR"              |"Banco"            |"Trimestral"    |"Hipoteca"              |
    |""           |"CPR"              |"Banco"            |"Anual"         |"Hipoteca"              |
    |""           |"CPR"              |"Banco"            |"Semestral"     |"Hipoteca"              |
    |""           |"CPR"              |"Pessoa Física"    |"Mensal"        |"Hipoteca"              |
    |""           |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Hipoteca"              |
    |""           |"CPR"              |"Pessoa Física"    |"Anual"         |"Hipoteca"              |
    |""           |"CPR"              |"Pessoa Física"    |"Semestral"     |"Hipoteca"              |
    |""           |"CPR"              |"Fornecedor"       |"Mensal"        |"Hipoteca"              |
    |""           |"CPR"              |"Fornecedor"       |"Trimestral"    |"Hipoteca"              |
    |""           |"CPR"              |"Fornecedor"       |"Anual"         |"Hipoteca"              |
    |""           |"CPR"              |"Fornecedor"       |"Semestral"     |"Hipoteca"              |

    |"Casado"     |"Custeio"          |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"Custeio"          |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"Custeio"          |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"Custeio"          |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"Investimento"     |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"Investimento"     |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"Investimento"     |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"Investimento"     |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"Duplicata"        |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"Duplicata"        |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"Duplicata"        |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"Duplicata"        |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"CPR"              |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"CPR"              |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"CPR"              |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"CPR"              |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"Custeio"          |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"Custeio"          |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"Custeio"          |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"Custeio"          |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"Custeio"          |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"Investimento"     |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"Investimento"     |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"Investimento"     |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"Investimento"     |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"Investimento"     |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"Arrendamento"     |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"Arrendamento"     |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"Arrendamento"     |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"Arrendamento"     |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"Duplicata"        |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"Duplicata"        |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"Duplicata"        |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"Duplicata"        |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"CPR"              |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"CPR"              |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"CPR"              |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"CPR"              |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"CPR"              |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Solteiro"   |"CPR"              |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Solteiro"   |"CPR"              |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Solteiro"   |"CPR"              |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Solteiro"   |"CPR"              |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"Custeio"          |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"Custeio"          |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"Custeio"          |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"Custeio"          |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"Custeio"          |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"Custeio"          |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"Custeio"          |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"Investimento"     |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"Investimento"     |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"Investimento"     |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"Investimento"     |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"Investimento"     |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"Investimento"     |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"Investimento"     |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"Arrendamento"     |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"Arrendamento"     |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"Arrendamento"     |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"Arrendamento"     |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"Duplicata"        |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"Duplicata"        |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"Duplicata"        |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"Duplicata"        |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"CPR"              |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"CPR"              |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"CPR"              |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"CPR"              |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"CPR"              |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"CPR"              |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"CPR"              |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Divorciado" |"CPR"              |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Divorciado" |"CPR"              |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Divorciado" |"CPR"              |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Divorciado" |"CPR"              |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"Custeio"          |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"Custeio"          |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"Custeio"          |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"Custeio"          |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"Custeio"          |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"Investimento"     |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"Investimento"     |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"Investimento"     |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"Investimento"     |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"Investimento"     |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"Arrendamento"     |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"Arrendamento"     |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"Arrendamento"     |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"Arrendamento"     |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"Duplicata"        |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"Duplicata"        |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"Duplicata"        |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"Duplicata"        |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"CPR"              |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"CPR"              |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"CPR"              |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"CPR"              |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"CPR"              |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |"Viúvo"      |"CPR"              |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |"Viúvo"      |"CPR"              |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |"Viúvo"      |"CPR"              |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |"Viúvo"      |"CPR"              |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |""           |"Custeio"          |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |""           |"Custeio"          |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |""           |"Custeio"          |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |""           |"Custeio"          |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |""           |"Custeio"          |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |""           |"Custeio"          |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |""           |"Custeio"          |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |""           |"Custeio"          |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |""           |"Custeio"          |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |""           |"Custeio"          |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |""           |"Custeio"          |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |""           |"Custeio"          |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |""           |"Investimento"     |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |""           |"Investimento"     |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |""           |"Investimento"     |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |""           |"Investimento"     |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |""           |"Investimento"     |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |""           |"Investimento"     |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |""           |"Investimento"     |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |""           |"Investimento"     |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |""           |"Investimento"     |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |""           |"Investimento"     |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |""           |"Investimento"     |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |""           |"Investimento"     |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |""           |"Arrendamento"     |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |""           |"Arrendamento"     |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |""           |"Arrendamento"     |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |""           |"Arrendamento"     |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |""           |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |""           |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |""           |"Arrendamento"     |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |""           |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |""           |"Arrendamento"     |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |""           |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |""           |"Arrendamento"     |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |""           |"Arrendamento"     |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |""           |"Duplicata"        |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |""           |"Duplicata"        |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |""           |"Duplicata"        |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |""           |"Duplicata"        |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |""           |"Duplicata"        |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |""           |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |""           |"Duplicata"        |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |""           |"Duplicata"        |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |""           |"Duplicata"        |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |""           |"Duplicata"        |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |""           |"Duplicata"        |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |""           |"Duplicata"        |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |
    |""           |"CPR"              |"Banco"            |"Mensal"        |"Penhor de Safra"       |
    |""           |"CPR"              |"Banco"            |"Trimestral"    |"Penhor de Safra"       |
    |""           |"CPR"              |"Banco"            |"Anual"         |"Penhor de Safra"       |
    |""           |"CPR"              |"Banco"            |"Semestral"     |"Penhor de Safra"       |
    |""           |"CPR"              |"Pessoa Física"    |"Mensal"        |"Penhor de Safra"       |
    |""           |"CPR"              |"Pessoa Física"    |"Trimestral"    |"Penhor de Safra"       |
    |""           |"CPR"              |"Pessoa Física"    |"Anual"         |"Penhor de Safra"       |
    |""           |"CPR"              |"Pessoa Física"    |"Semestral"     |"Penhor de Safra"       |
    |""           |"CPR"              |"Fornecedor"       |"Mensal"        |"Penhor de Safra"       |
    |""           |"CPR"              |"Fornecedor"       |"Trimestral"    |"Penhor de Safra"       |
    |""           |"CPR"              |"Fornecedor"       |"Anual"         |"Penhor de Safra"       |
    |""           |"CPR"              |"Fornecedor"       |"Semestral"     |"Penhor de Safra"       |