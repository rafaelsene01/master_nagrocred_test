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
    page.assert_selector('#cardMarriageCertificatePic')
    page.assert_selector('#cardSpousePersonalDocPic')
    page.assert_selector('#cardSpouseIrpfPic')
  end

  def subirArquivoEm(campoID)
    @foto = File.join(Dir.pwd, 'features/download/drops.png')  
    attach_file campoID, @foto, :make_visible => true
  end

  def verificarSeDocumentoFoiEnviado(campoID)
    find("##{campoID} img[alt='Enviado com sucesso']")
  end

  def verificarSeDocumentoNaoFoiEnviado(campoID)
    find("##{campoID} img[alt='Enviar documento']")
  end
  
end