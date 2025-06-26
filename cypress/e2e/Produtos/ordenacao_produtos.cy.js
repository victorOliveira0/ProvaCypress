describe('Gerenciamento e Visualização de Produtos', () => {
  beforeEach(() => {
    cy.fixture('usuarios').then((user) => {
      cy.login(user.standard, user.password);
    });
  });

  it('Ordenar produtos por nome (Z até A)', () => {
    cy.get('.product_sort_container').select('za');
    cy.get('.inventory_item_name').first().should('have.text', 'Test.allTheThings() T-Shirt (Red)');
  });

  it('Ordenar produtos por preço (menor para maior)', () => {
    cy.get('.product_sort_container').select('lohi');
    cy.get('.inventory_item_price').first().should('have.text', '$7.99');
  });
});