Feature: test-clara mexico

    Background: Ingreso al sitio de Mexico
        Given ingreso a la pagina de clara 'mx'

    Scenario: Voy a la pagina de Brasil
        Then Hago click en menu de lenguaje
        Then Valido el hreflang de 'br' y voy al sitio
        Then Valido el lenguaje 'br'
        Then Valido que no se muestre el pais 'br'

    Scenario: Voy a la pagina de Colombia
        Then Hago click en menu de lenguaje
        Then Valido el hreflang de 'co' y voy al sitio
        Then Valido el lenguaje 'co'
        Then Valido que no se muestre el pais 'co'

    Scenario: Voy a la pagina de Colombia visible
        Then Hago click en menu de lenguaje
        Then Valido que sea visible 'co' y voy al sitio
        Then Valido el lenguaje 'co'
        Then Valido que no se muestre el pais 'co'

    Scenario: Voy a la pagina de Brasil visible
        Then Hago click en menu de lenguaje
        Then Valido que sea visible 'br' y voy al sitio
        Then Valido el lenguaje 'br'
        Then Valido que no se muestre el pais 'br'