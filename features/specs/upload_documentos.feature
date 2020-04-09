#language: pt
@login
@deslogar
@tag_upload_documentos
Funcionalidade: Upload de documentos
  Criar um produtor
  Fazer o upload dos documentos, verificar se foi enviado, excluir e verificar exclusão
  Excluir produtor no final

  Esquema do Cenario: Upload de documentos e verificação
    Dado que os dados do produtor sejam <estado_civil>
    Quando cadastrar um produtor
    Entao verificar se foi cadastrado
    E selecionar produtor
    E verificar se esta no form de documentos do produtor
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

    |estado_civil |
    |"Casado"     |
    |"Solteiro"   |
    |"Divorciado" |
    |"Viúvo"      |
    |""           |