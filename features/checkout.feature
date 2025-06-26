Funcionalidade 4:
  Funcionalidade de Checkout
    COMO - um cliente da Sauce Demo
    EU --- quero poder acessar o checkout
    PARA - finalizar minha compra

    Cenário: 
      Processo de checkout
        DADO --- que eu sou um usuário logado e adicionei um item ao carrinho
        QUANDO - eu acesso o carrinho de compras
        E ------ eu clico em "Checkout"
        E ------ eu preencho os dados de entrega
        E ------ eu continuo para o próximo passo
        ENTÃO -- eu devo ver o resumo do pedido
        QUANDO - eu finalizo a compra
        ENTÃO -- eu devo ver a mensagem de sucesso "Thank you for your order!"