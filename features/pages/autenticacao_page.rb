class Autenticacao < SitePrism::Page
    
    set_url '/'
    element :campo_email, '#input-13'
    element :campo_senha, '#input-16'

    def logar(email, senha)
        campo_email.set email
        campo_senha.set senha
        if page.has_no_css?('v-btn--disabled') and 
            (senha.length >= 8 || senha.length == 0) and 
            (email.index('@') || email.length == 0)
            click_button "Acessar" 
        end        
    end

    def verificarTelaProdutor(text)
        page.has_text?(text)
    end

    def verificarMensagemLogin(text)
        page.has_text?(text)
        # return find('.v-alert__content').text   
    end

    def deslogar()
        begin  
        find_by_id('infoClient').click
        find_by_id('logout').click
        rescue 
        find_by_id('infoClient', wait: 60).click
        find_by_id('logout', wait: 60).click
        end 
    end
    
end