Quando("selecionar produtor") do
  acessarPrimeiroProdutor()
end

Entao("verificar se esta no form de documentos do produtor") do
  upload_documento.paginaDocumento()
end

Entao("verificar os campos de documentos") do
  upload_documento.verificarCamposDocumento(@estado_civil)
end

Entao("validar link SCR") do
  # pending # Write code here that turns the phrase above into concrete actions
end

Entao("fazer upload dos documentos") do
  # pending # Write code here that turns the phrase above into concrete actions
end

Entao("verificar se foi enviado") do
  # pending # Write code here that turns the phrase above into concrete actions
end

Entao("excluir documentos e verificar") do
  # pending # Write code here that turns the phrase above into concrete actions
end

Entao("verificar se foi excluido") do
  # pending # Write code here that turns the phrase above into concrete actions
end

Entao("ir para listagem de produtores") do
  navegarProdutores()
end