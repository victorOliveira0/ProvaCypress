describe('Gerenciamento do Carrinho de Compras', () => {
    beforeEach(() => {
        cy.login('standard_user', 'secret_sauce');
    });
    
    it('Adicionar produtos no carrinho ', () => {
        cy.get('[data-test="add-to-cart-sauce-labs-backpack"]').click();
        cy.get('.shopping_cart_badge').should('contain', '1');
    });

    it('Adicionar múltiplos produtos ao carrinho', () => {
        cy.get('[data-test="add-to-cart-sauce-labs-backpack"]').click();
        cy.get('[data-test="add-to-cart-sauce-labs-bike-light"]').click();
        cy.get('[data-test="add-to-cart-sauce-labs-bolt-t-shirt"]').click();
    });

    it('Remover produtos do carrinho e validar quantos tem', () => {
        cy.get('[data-test="add-to-cart-sauce-labs-backpack"]').click();
        cy.get('[data-test="inventory-container"]').should('contain', '1');
        cy.get('[data-test="remove-sauce-labs-backpack"]').click();
        cy.get('[data-test="inventory-container"]').should('contain', '0');
    });

    it('Validar se o produto específico está lá', () => {
        cy.get('[data-test="add-to-cart-sauce-labs-backpack"]').click();
        cy.get('[data-test="inventory-container"]').should('contain','Sauce Labs Backpack');
    });
});
