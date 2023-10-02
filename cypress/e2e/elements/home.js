module.exports = class Home{

    static getPaisesElements(){ cy.get('.menu-language li a').as("paises") }
    static menuLanguage(){ return cy.get('.menu-language') }
}