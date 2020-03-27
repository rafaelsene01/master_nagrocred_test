Dir[File.join(File.dirname(__FILE__),
              '../pages/*_page.rb')].each { |file| require file }

module Pages
    def autenticacao
        @autenticacao ||= Autenticacao.new
    end
    def site
        @site ||= SitePage.new
    end
    def cadastrar_produtor
        @cadastrar_produtor ||= CadastrarProdutor.new
    end
    def navegar
        @navegar ||= Navegar.new
    end
    def upload_documento
        @upload_documento ||= UploadDocumento.new
    end
end