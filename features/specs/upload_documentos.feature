#language: pt
@login
@deslogar
@tag_upload_documentos
Funcionalidade: Upload de documentos
  Criar um produtor
  Fazer o upload dos documentos, verificar se foi enviado, excluir e verificar exclusão
  Excluir produtor no final

    # |nome                                           |cpf             |estado_civil |
    # |"Rafael Emanuel Elias da Paz"                  |"16251734400"   |"Casado"     |
    # |"Benedito Danilo Silva"                        |"90592202429"   |"Solteiro"   |
    # |"Erick Nelson da Paz"                          |"13019303427"   |"Divorciado" |
    # |"Catarina Jéssica Nascimento"                  |"46019379493"   |"Viúvo"      |
    # |"André e Mariane Buffet me"                    |"05784016000156"|""           |
    # |"Regina e Carlos Eduardo Casa Noturna Ltda"    |"02380872000158"|""           |

  Esquema do Cenario: Upload de documentos e verificação de PF Casada
    Dado que os dados do produtor sejam <nome> <cpf> <estado_civil>
    Quando cadastrar um produtor
    E selecionar produtor
    Entao verificar se esta no form de documentos do produtor
    E verificar os campos de documentos
    E validar link SCR
    E fazer upload dos documentos
    E verificar se foi enviado
    E excluir documentos
    E verificar se foi excluido
    E ir para listagem de produtores
    E excluir produtor
    E verificar se o produtor foi excluido
    Exemplos:   

    |nome                                           |cpf             |estado_civil |
    |"Rafael Emanuel Elias da Paz"                  |"16251734400"   |"Casado"     |
    |"Benedito Danilo Silva"                        |"90592202429"   |"Solteiro"   |