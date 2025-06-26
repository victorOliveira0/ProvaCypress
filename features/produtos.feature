Funcionalidade 2: 
  Gerenciamento e Visualização de Produtos
    COMO - um cliente da Sauce Demo
    EU --- quero poder visualizar e ordenar a lista de produtos
    PARA - encontrar os itens que desejo de forma eficiente.

  Cenário: 
    Validar a exibição da lista de produtos
      DADO --- que estou na página de produtos
      QUANDO - clico em "Products"
      ENTÃO -- a lista de produtos deve ser exibida

  Cenário: 
    Visualizar detalhes de um produto
      DADO --- que estou na página de produtos
      QUANDO - clico em um produto
      ENTÃO -- a descrição do produto deve ser exibida 

  Cenário:
    Ordenar produtos por nome (Z até A)
      DADO --- que estou na página de produtos
      QUANDO - clico no ícone de funil
      E ------ clico em "Name (Z to A)"
      ENTÃO -- a lista de produtos será ordenada de Z até A

  Cenário:
    Ordenar produtos por preço (menor para maior)
      DADO --- que eu estou na página de produtos
      QUANDO - eu seleciono a opção de ordenação "Price (low to high)"
      ENTÃO -- o primeiro item da lista deve ser o de menor preço