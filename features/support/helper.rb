require 'fileutils'
# metodo para tira screenshot e imbutir no relatorio html
module Helper
  def take_screenshot(file_name, result)
    @newFileName = file_name.gsub(/[,()#]/, '') 
    timer_path = Time.now.strftime('%F').to_s
    file_path = "results/screenshots/test_#{result}/run_#{timer_path}"
    screenshot = "#{file_path}/#{@newFileName}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Click here')
  end

  def navegarProdutores()
    find_by_id("menu-produtores").click
  end

  def analiseCredito()
    find_by_id("menu-analise-credito").click
  end

  def acessarProdutor(nome)
    @changeName = nome.downcase.gsub ' ', '_'
    find_by_id("#{@changeName}").click
  end

  def maskCpfCnpj(val)
    if (val.length <= 11) and
      cpf = CPF.new(val)
      return cpf.formatted      
    elsif 
      cnpj = CNPJ.new(val)
      return cnpj.formatted   
    end
  end
end