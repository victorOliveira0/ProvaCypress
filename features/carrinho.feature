Funcionalidade 3: 
  Gerenciamento do Carrinho de Compras
    COMO - um cliente da Sauce Demo
    EU --- quero poder adicionar, remover e verificar itens no carrinho
    PARA - ter controle total sobre minhas compras.

  Cenário: 
    Adicionar produtos ao carrinho
      DADO --- que estou na página de produtos
      QUANDO - eu adiciono um item ao carrinho
      ENTÃO -- o ícone do carrinho deve ser atualizado para indicar "1 ou mais" item(ns)

  Cenário: 
    Remover produtos do carrinho e validar quantos tem
      DADO --- que adicionei 1 ou mais produto(s) ao carrinho
      E ------ estou na página do carrinho
      QUANDO - eu removo o(s) produto(s)
      ENTÃO -- o carrinho deve ser exibido como vazio

  Cenário: 
    Validar se o produto específico está lá
      DADO --- que adicionei um produto específico ao carrinho
      QUANDO - eu navego para a página do carrinho
      ENTÃO -- o mesmo produto deve estar lá