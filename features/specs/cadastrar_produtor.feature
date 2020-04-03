#language: pt
@login
@deslogar
@tag_cadastrar_produtor
Funcionalidade: Criar novo produtor
  Testar criação de novo produtor

  Esquema do Cenario: Cadastro de produtores
    Dado que os dados do produtor sejam <nome> <cpf> <estado_civil>
    Quando cadastrar um produtor
    Entao verificar se foi cadastrado
    E excluir produtor
    E verificar se o produtor foi excluido
    Exemplos:   

    |nome                                           |cpf             |estado_civil |
    |"Rafael Emanuel Elias da Paz"                  |"16251734400"   |"Casado"     |
    |"Benedito Danilo Silva"                        |"90592202429"   |"Solteiro"   |
    |"Erick Nelson da Paz"                          |"13019303427"   |"Divorciado" |
    |"Catarina Jéssica Nascimento"                  |"46019379493"   |"Viúvo"      |
    |"André e Mariane Buffet me"                    |"05784016000156"|""           |
    |"Regina e Carlos Eduardo Casa Noturna Ltda"    |"02380872000158"|""           |

