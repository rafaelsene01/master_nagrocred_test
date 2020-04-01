World(Helper)

Before("@login") do
  visit "/"
  find("#input-13").set $email
  find("#input-16").set $senha
  click_button "Acessar"
end

After '@deslogar' do 
  autenticacao.deslogar
end 

After '@reset_sessions' do
  Capybara.reset_sessions!
  visit "/"
end

# depois de cada cenario ele tira um print e remove todos os espacos virgulas
After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
  scenario_name = scenario_name.delete(',', '')
  scenario_name = scenario_name.delete('(', '')
  scenario_name = scenario_name.delete(')', '')
  scenario_name = scenario_name.delete('#', '')

  # se o cenario falha ele vai chamar o metodo take passando
  # dois parametros o nome do cenario com nome minusculo e o resultado
  if scenario.failed?
    take_screenshot(scenario_name.downcase!, 'failed')
  else
    take_screenshot(scenario_name.downcase!, 'passed')
  end
end