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
  upload_documento.subirArquivoEm('personalDocPic')
end

Entao("verificar se foi enviado") do
  upload_documento.verificarSeDocumentoFoiEnviado('cardPersonalDocPic')
end

Entao("excluir documentos") do
  upload_documento.removerDocumento('cardPersonalDocPic')
end

Entao("verificar se foi excluido") do
  upload_documento.verificarSeDocumentoNaoFoiEnviado('cardPersonalDocPic')
end

Entao("ir para listagem de produtores") do
  navegarProdutores()
end