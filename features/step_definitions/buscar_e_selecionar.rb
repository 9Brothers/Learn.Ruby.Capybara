Dado("que acessei o site {string}") do |string|
  visit(string)  
end

Dado("cliquei no menu {string}") do |string|
  find(:css, ".headerMenu .todascategorias").hover
end

Dado("cliquei no sub-menu {string}") do |string|
  find(".headerMenu .todascategorias").find_link(string).click
end

Quando("a pagina abriu") do
  expect(page).to have_css(".fBrands", wait: 30)
end

Quando("cliquei em uma marca") do
  find("#ctl00_Conteudo_ctl11_ctl01_ulMarca a", text: "Electrolux").click
end

Quando("selecionei o ultimo produto da lista") do
  
  expect(page).to have_css(".tit", text: "Electrolux", wait: 30)
  
  produtos = page.execute_script("return document.getElementsByClassName('vitrineProdutos').item(0).childNodes")
  
  selector = "ul.vitrineProdutos li:nth-child(#{produtos.length - 1})"

  expect(page).to have_css(selector, wait: 30)

  wait = Selenium::WebDriver::Wait.new(:timeout => 30)

  li = wait.until {
    element = find(selector)
    element if element.visible?
  }

  li.click
end

Entao("visualizei a pagina do produto") do
  # expect(page).to have_css("#ctl00_Conteudo_upMasterNomeProduto .produtoNome", wait: 30)
  
  sleep 5
end