#language: pt
@login
@deslogar
@tag_cadastrarUsuario
Funcionalidade: Criar novo usuário
  Testar criação de noso usuario

  Esquema do Cenario: Cadastro de produtor pessoa fisica
    Dado que meus dados sejam <nome> <cpf> <estado_civil>
    Quando cadastrar um produtor
    Entao verificar se foi cadastrado
    E excluir o cadastro e verificar.
    Exemplos:   

    |nome                                           |cpf             |estado_civil |
    |"Rafael Emanuel Elias da Paz"                  |"16251734400"   |"Casado"     |
    |"Benedito Danilo Silva"                        |"90592202429"   |"Solteiro"   |
    |"Erick Nelson da Paz"                          |"13019303427"   |"Divorciado" |
    |"Catarina Jéssica Nascimento"                  |"46019379493"   |"Viúvo"      |
    |"André e Mariane Buffet me"                    |"05784016000156"|""           |
    |"Regina e Carlos Eduardo Casa Noturna Ltda"    |"02380872000158"|""           |