class UploadDocumento < SitePrism::Page

  def paginaDocumento()
    find(".sidebar span", text: "Documentação").click
    page.assert_text('Documentos')
  end

  def paginaEndividamento()
    find(".sidebar span", text: "Endividamento").click
    page.assert_text('Lista de endividamento')
  end

  def camposBasicosPF()
    page.assert_selector('#cardPersonalDocPic')
    page.assert_selector('#cardAddressDocPic')
    page.assert_selector('#cardIrpfPic')
    page.assert_selector('#cardScrPic')
  end

  def camposPFCasado()
    camposBasicosPF()
    page.assert_selector('#cardMarriageCertificatePic')
    page.assert_selector('#cardSpousePersonalDocPic')
    page.assert_selector('#cardSpouseIrpfPic')
  end

  def camposBasicosPJ()
    page.assert_selector('#cardBalancePic')
    page.assert_selector('#cardDrePic')
    page.assert_selector('#cardScrPic')
  end

  def verificarCamposDocumento(estado_civil)
    case estado_civil
    when 'Casado'
      camposPFCasado()
    when 'Solteiro', 'Divorciado', 'Viúvo'
      camposBasicosPF()
    else
      camposBasicosPJ()
    end
  end

  def camposBasicosPFSubirArquivo(foto)
    attach_file 'personalDocPic', foto, :make_visible => true
    attach_file 'addressDocPic', foto, :make_visible => true
    attach_file 'irpfPic', foto, :make_visible => true
    attach_file 'scrPic', foto, :make_visible => true
  end

  def camposPFCasadoSubirArquivo(foto)
    camposBasicosPFSubirArquivo(foto)
    attach_file 'marriageCertificatePic', foto, :make_visible => true
    attach_file 'spousePersonalDocPic', foto, :make_visible => true
    attach_file 'spouseIrpfPic', foto, :make_visible => true
  end

  def camposBasicosPJSubirArquivo(foto)
    attach_file 'balancePic', foto, :make_visible => true
    attach_file 'drePic', foto, :make_visible => true
    attach_file 'scrPic', foto, :make_visible => true
  end

  def subirArquivo(estado_civil)
    @foto = File.join(Dir.pwd, 'features/download/drops.png')  

    case estado_civil
    when 'Casado'
      camposPFCasadoSubirArquivo(@foto)
    when 'Solteiro', 'Divorciado', 'Viúvo'
      camposBasicosPFSubirArquivo(@foto)
    else
      camposBasicosPJSubirArquivo(@foto)
    end
  end

  def verificarSeDocumentoFoiEnviado(estado_civil)

    base = ['cardPersonalDocPic','cardAddressDocPic','cardIrpfPic','cardScrPic']
    casado = ['cardMarriageCertificatePic','cardSpousePersonalDocPic','cardSpouseIrpfPic']
    pj = ['cardBalancePic','cardDrePic','cardScrPic']
    @novafoto = File.join(Dir.pwd, 'features/download/drops.png')  

    case estado_civil
    when 'Casado'
      base.each do |id|
        begin  
          find("##{id} img[alt='Enviado com sucesso']")
        rescue 
            @text = id.gsub 'card', ''
            @text = @text[0].downcase + @text[1..@text.length]
            attach_file @text, @novafoto, :make_visible => true
        ensure 
          find("##{id} img[alt='Enviado com sucesso']")
        end 
      end
      casado.each do |id|
        begin  
          find("##{id} img[alt='Enviado com sucesso']")
        rescue 
            @text = id.gsub 'card', ''
            @text = @text[0].downcase + @text[1..@text.length]
            attach_file @text, @novafoto, :make_visible => true
        ensure 
          find("##{id} img[alt='Enviado com sucesso']")
        end 
      end
    when 'Solteiro', 'Divorciado', 'Viúvo'
      base.each do |id|
        begin  
          find("##{id} img[alt='Enviado com sucesso']")
        rescue 
            @text = id.gsub 'card', ''
            @text = @text[0].downcase + @text[1..@text.length]
            attach_file @text, @novafoto, :make_visible => true
        ensure 
          find("##{id} img[alt='Enviado com sucesso']")
        end 
      end
    else
      pj.each do |id|
        begin  
          find("##{id} img[alt='Enviado com sucesso']")
        rescue 
            @text = id.gsub 'card', ''
            @text = @text[0].downcase + @text[1..@text.length]
            attach_file @text, @novafoto, :make_visible => true
        ensure 
          find("##{id} img[alt='Enviado com sucesso']")
        end 
      end
    end
  end

  def removerDocumento(estado_civil)

    base = ['cardPersonalDocPic','cardAddressDocPic','cardIrpfPic','cardScrPic']
    casado = ['cardMarriageCertificatePic','cardSpousePersonalDocPic','cardSpouseIrpfPic']
    pj = ['cardBalancePic','cardDrePic','cardScrPic']
    case estado_civil
    when 'Casado'
      base.each do |id|
        find_by_id("#{id}").hover
        find_by_id('removeDocument').click
      end
      casado.each do |id|
        find_by_id("#{id}").hover
        find_by_id('removeDocument').click
      end
    when 'Solteiro', 'Divorciado', 'Viúvo'
      base.each do |id|
        find_by_id("#{id}").hover
        find_by_id('removeDocument').click
      end
    else
      pj.each do |id|
        find_by_id("#{id}").hover
        find_by_id('removeDocument').click
      end
    end
  end

  def verificarSeDocumentoNaoFoiEnviado(estado_civil)
    base = ['cardPersonalDocPic','cardAddressDocPic','cardIrpfPic','cardScrPic']
    casado = ['cardMarriageCertificatePic','cardSpousePersonalDocPic','cardSpouseIrpfPic']
    pj = ['cardBalancePic','cardDrePic','cardScrPic']
    case estado_civil
    when 'Casado'
      base.each do |id|
        find("##{id} img[alt='Enviar documento']")
      end
      casado.each do |id|
        find("##{id} img[alt='Enviar documento']")
      end
    when 'Solteiro', 'Divorciado', 'Viúvo'
      base.each do |id|
        find("##{id} img[alt='Enviar documento']")
      end
    else
      pj.each do |id|
        find("##{id} img[alt='Enviar documento']")
      end
    end
  end
end