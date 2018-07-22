# language: pt

Funcionalidade: Buscar e selecionar um produto

Cenario: Acessar o site, clicar em uma categoria e selecionar um produto
  Dado que acessei o site "https://www.vvatacado.com.br"
  E cliquei no menu "Todas as categorias"
  E cliquei no sub-menu "Eletrodomésticos"
  Quando a pagina abriu
  E cliquei em uma marca
  E selecionei o ultimo produto da lista
  Entao visualizei a pagina do produto
