describe('Gerenciamento e Visualização de Produtos', () => {
  beforeEach(() => {
    cy.login('standard_user', 'secret_sauce');
  }); 
  //beforeEach pra fazer o login antes de todo o resto aí,
  //com comando customizado cy.login q ta lá no commands.js
  
  it('Validar a exibição da lista de produtos', () => {
    cy.get('.inventory_list').should('be.visible');
  });

  it('Visualizar detalhes de um produto', () => {
    cy.get('#item_4_title_link > .inventory_item_name').click();
    cy.get('.inventory_details_name').should('have.text', 'Sauce Labs Backpack');
    cy.get('.inventory_details_price').should('be.visible');
  });
});