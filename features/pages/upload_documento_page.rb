class UploadDocumento < SitePrism::Page

  def paginaDocumento()
    find(".sidebar span", text: "Documentação").click
    page.assert_text('Documentos do Produtor')
  end

  def paginaEndividamento()
    find(".sidebar span", text: "Endividamento").click
    page.assert_text('Lista de endividamento')
  end

  #personalDocPic #cardFile
  def verificarCamposDocumento(estado_civil)
    # estado_civil
    page.assert_selector('#cardPersonalDocPic')
    page.assert_selector('#cardAddressDocPic')
    page.assert_selector('#cardIrpfPic')
    page.assert_selector('#cardScrPic')
    # page.assert_selector('#cardMarriageCertificatePic')
    # page.assert_selector('#cardSpousePersonalDocPic')
    # page.assert_selector('#cardSpouseIrpfPic')
  end

  def subirArquivo(estado_civil)
    @foto = File.join(Dir.pwd, 'features/download/drops.png')  

    case estado_civil
    when 'Casado', 'Solteiro'
      attach_file 'personalDocPic', @foto, :make_visible => true
    when 2..10
      puts "Seu número está entre 2 e 10"
    when 11,13,17,19
      puts "é um número primo entre 10 e 20"
    when String
      puts "é uma String"
    else
      puts "Qualquer outra coisa."
    end
  end

  def verificarSeDocumentoFoiEnviado(estado_civil)
    case estado_civil
    when 'Casado', 'Solteiro'
      find("#cardPersonalDocPic img[alt='Enviado com sucesso']")
    when 2..10
      puts "Seu número está entre 2 e 10"
    when 11,13,17,19
      puts "é um número primo entre 10 e 20"
    when String
      puts "é uma String"
    else
      puts "Qualquer outra coisa."
    end
    # find("##{campoID} img[alt='Enviado com sucesso']")
  end

  def verificarSeDocumentoNaoFoiEnviado(estado_civil)
    case estado_civil
    when 'Casado', 'Solteiro'
      puts "Seu número é 1"
    when 2..10
      puts "Seu número está entre 2 e 10"
    when 11,13,17,19
      puts "é um número primo entre 10 e 20"
    when String
      puts "é uma String"
    else
      puts "Qualquer outra coisa."
    end
    # find("##{campoID} img[alt='Enviar documento']")
    find("#cardPersonalDocPic img[alt='Enviar documento']")
  end

  def removerDocumento(estado_civil)
    case estado_civil
    when 'Casado', 'Solteiro'
      find_by_id("cardPersonalDocPic").hover
      find_by_id('removeDocument').click
    when 2..10
      puts "Seu número está entre 2 e 10"
    when 11,13,17,19
      puts "é um número primo entre 10 e 20"
    when String
      puts "é uma String"
    else
      puts "Qualquer outra coisa."
    end
    # find_by_id("#{campoID}").hover

  end
  
end