#language: pt
@tag_autenticacao
Funcionalidade: Autenticação
   Testar login da plataforma

   @deslogar
   Cenário: Login de usuario com sucesso
      Dado que eu tenho um usuario
      Quando os dados for valido, logar o usuario.
      Entao vejo a tela de 'Lista de produtores'

   Esquema do Cenario: Login sem sucesso
      Dado que meus dados sejam <email> <senha>
      Quando clico em acessar
      Entao vejo a <mensagem>
      Exemplos:   
      
      |email                          |senha         |mensagem                                                 |
      |"rayssa.tatiane@conago.com.br" |'987654321'   |'Usuário informado não existe!'                          |
      |"rayssa.tatiane@conagro.com.br"|'98888654321' |'A senha informada é inválida!'                          |
      |"rayssa.tatiane@conaro.com.br" |'987656664321'|'Usuário informado não existe!'                          |
      # |"rayssa.tatianeconagro.com.br" |'987654321'   |'E-mail inválido.'                                       |
      # |''                             |'987654321'   |'Requerido.'                                             |
      # |"rayssa.tatiane@conagro.com.br"|''            |'Requerido.'                                             |
      # |"rayssa.tatiane@conagro.com.br"|'987654321'   |''                                                       |
      # |"rayssa.tatiane@conagro.com.br"|'9876543'     |'Insira no mínimo 8 caracteres'                          |
      # |''                             |''            |'Informe seu e-mail para receber o código de verificação'|