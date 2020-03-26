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
        return find('#card > div > div > h3').text   
    end

    def verificarMensagemLogin()
        return find('.v-alert__content').text   
    end

    def deslogar()
        find('#infoClient').click
        find('#logout').click
    end
    
end