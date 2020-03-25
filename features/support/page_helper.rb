Dir[File.join(File.dirname(__FILE__),
              '../pages/*_page.rb')].each { |file| require file }

module Pages
    def autenticacao
        @autenticacao ||= Autenticacao.new
    end
    def site
        @site ||= SitePage.new
    end
end