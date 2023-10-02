/// <reference types="cypress" />

const config = require('../config').config
const homePage = require('../elements/home')
import {
    Given,
    When,
    Then,
    Before
} from "@badeball/cypress-cucumber-preprocessor"



Given("ingreso a la pagina de clara {string}", (pais)=> {
    cy.visitByCountry(pais)
})  

Then("Hago click en menu de lenguaje", () => {
    homePage.menuLanguage().click({force: true})
    homePage.getPaisesElements()
})

Then("Valido el hreflang de {string} y voy al sitio", (pais) => {

    cy.get('@paises').then((paises) => {
        pais_element = paises.filter(function( index ) {
            return Cypress.$( this ).attr( "hreflang" ).includes(pais);
        })
        expect(pais_element.attr('hreflang')).to.contain(pais)
        cy.get(pais_element).click({force: true})

    })

})

Then("Valido que sea visible {string} y voy al sitio", (pais) => {

    cy.get('@paises').then((paises) => {
        pais_element = paises.filter(function( index ) {
            return Cypress.$( this ).attr( "hreflang" ).includes(pais);
        })
        expect(pais_element).to.be.visible()
        cy.get(pais_element).click({force: true})

    })

})

Then("Valido el lenguaje {string}", (pais) => {
    cy.get('html').should('have.attr', 'lang').and('contain', pais)
    
})

Then("Valido que no se muestre el pais {string}", (pais) => {
    homePage.getPaisesElements()
    cy.get('@paises').each((pais_element) => {
        expect(pais_element.attr('hreflang')).to.not.contain(pais)
    })
})