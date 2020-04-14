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
    E excluir endividamento criado
    E ir para listagem de produtores
    E excluir produtor
    E verificar se o produtor foi excluido
    Exemplos:   
    # tipo_endividamento |> Custeio, Investimento, Arrendamento, Duplicata, CPR
    # credor |> Banco, Pessoa Física, Fornecedor
    # forma_pagamento |> Mensal, Trimestral, Anual, Prazo Safra, Semestral
    |estado_civil |tipo_endividamento |credor             |forma_pagamento |
    |"Casado"     |"Custeio"          |"Banco"            |"Mensal"        |
    |"Casado"     |"Custeio"          |"Banco"            |"Trimestral"    |
    |"Casado"     |"Custeio"          |"Banco"            |"Anual"         |
    |"Casado"     |"Custeio"          |"Banco"            |"Semestral"     |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Mensal"        |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Trimestral"    |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Anual"         |
    |"Casado"     |"Custeio"          |"Pessoa Física"    |"Semestral"     |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Mensal"        |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Trimestral"    |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Anual"         |
    |"Casado"     |"Custeio"          |"Fornecedor"       |"Semestral"     |
    |"Casado"     |"Investimento"     |"Banco"            |"Mensal"        |
    |"Casado"     |"Investimento"     |"Banco"            |"Trimestral"    |
    |"Casado"     |"Investimento"     |"Banco"            |"Anual"         |
    |"Casado"     |"Investimento"     |"Banco"            |"Semestral"     |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Mensal"        |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Trimestral"    |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Anual"         |
    |"Casado"     |"Investimento"     |"Pessoa Física"    |"Semestral"     |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Mensal"        |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Trimestral"    |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Anual"         |
    |"Casado"     |"Investimento"     |"Fornecedor"       |"Semestral"     |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Mensal"        |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Trimestral"    |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Anual"         |
    |"Casado"     |"Arrendamento"     |"Banco"            |"Semestral"     |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Mensal"        |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Trimestral"    |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Anual"         |
    |"Casado"     |"Arrendamento"     |"Pessoa Física"    |"Semestral"     |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Mensal"        |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Trimestral"    |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Anual"         |
    |"Casado"     |"Arrendamento"     |"Fornecedor"       |"Semestral"     |
    |"Casado"     |"Duplicata"        |"Banco"            |"Mensal"        |
    |"Casado"     |"Duplicata"        |"Banco"            |"Trimestral"    |
    |"Casado"     |"Duplicata"        |"Banco"            |"Anual"         |
    |"Casado"     |"Duplicata"        |"Banco"            |"Semestral"     |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Mensal"        |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Trimestral"    |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Anual"         |
    |"Casado"     |"Duplicata"        |"Pessoa Física"    |"Semestral"     |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Mensal"        |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Trimestral"    |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Anual"         |
    |"Casado"     |"Duplicata"        |"Fornecedor"       |"Semestral"     |
    |"Casado"     |"CPR"              |"Banco"            |"Mensal"        |
    |"Casado"     |"CPR"              |"Banco"            |"Trimestral"    |
    |"Casado"     |"CPR"              |"Banco"            |"Anual"         |
    |"Casado"     |"CPR"              |"Banco"            |"Semestral"     |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Mensal"        |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Trimestral"    |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Anual"         |
    |"Casado"     |"CPR"              |"Pessoa Física"    |"Semestral"     |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Mensal"        |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Trimestral"    |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Anual"         |
    |"Casado"     |"CPR"              |"Fornecedor"       |"Semestral"     |
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