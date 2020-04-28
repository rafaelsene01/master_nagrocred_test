Entao("verificar se esta no form de endividamento do produtor") do
  endividamento.paginaEndividamento()
end

Entao("preencher todos campos requeridos de endividamentos {string} {string} {string}") do |tipo_endividamento, credor, forma_pagamento|
  endividamento.preencherCamposRequeridos(tipo_endividamento, credor, forma_pagamento)
end

Entao("preencher todos campos não requeridos de endividamentos {string}") do |tipo_garantia|
  endividamento.preencherCamposNaoRequeridos(tipo_garantia)
end

Entao("salvar endividamento criado") do
  endividamento.salvarEndividamentoCriado()
end

Entao("excluir endividamento criado") do
  endividamento.excluirEndividamentoCriado()
end



