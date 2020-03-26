#language: pt
@tag_autenticacao
Funcionalidade: Autenticação
   Enquanto usuário cadastrado na plataforma
   Quero realizar o login e senha
   Para que o sistema autentique e envi para a tela principal

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
      

    
   #  Login com usuário errado.
   #  Login com senha errada.
   #  Login com usuário e senha errada.
   #  Login com usuario fora de formatação
   #  Login sem usuario.
   #  Login sem senha.
   #  Login com "Lembrar meus dados".
   #  Login com senha menor que 8 caractéres.
   #  Esqueci minha senha
