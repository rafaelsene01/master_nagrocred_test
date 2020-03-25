class Autenticacao < SitePrism::Page
    
    set_url '/'
    element :campo_email, '#input-13'
    element :campo_senha, '#input-16'

    def logar(email, senha)
        campo_email.set email
        campo_senha.set senha
        click_button "Acessar"          
    end

    def verificarTelaProdutor()
        return find(:xpath, '//div[@id="card"]/div[1]/div[1]/h3', visible: true).text   
    end

    def verificarMensagemLogin()
        return find(:xpath, '//*[@id="login-form"]/div[5]/div/div[1]',visible: true).text   
    end

    def deslogar()
        find(:xpath, '//div[@id="menu__rigth-btn"]/button[2]').click
        find(:xpath, '//div[@id="logout"]').click
    end
    
end