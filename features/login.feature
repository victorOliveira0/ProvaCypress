Funcionalidade 1:
  Log-in correto e incorreto
    COMO - um cliente da Sauce Demo
    EU --- quero poder me autenticar e sair da minha conta
    PARA - garantir o acesso seguro à aplicação.

  Cenário: 
    Validar login com usuário e senha corretos 
      DADO --- que estou na página de login
      QUANDO - eu insiro as credenciais de um usuário válido
      E ------ clico no botão de login
      ENTÃO -- devo ser redirecionado para a página de produtos

  Cenário: 
    Validar comportamento com usuário e senha incorretos
      DADO --- que estou na página de login
      QUANDO - eu insiro as credenciais de um usuário inválido
      E ------ clico no botão de login
      ENTÃO -- devo ver uma mensagem de erro apropriada

  Cenário: 
    Realizar logout após login bem-sucedido 
      DADO --- que fiz login com sucesso
      QUANDO - eu realizo o logout
      ENTÃO -- devo ser redirecionado de volta para a página de login