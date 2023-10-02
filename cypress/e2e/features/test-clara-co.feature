Feature: test-clara colombia

    Background: Ingreso al sitio de Colombia
        Given ingreso a la pagina de clara 'co'

    Scenario: Voy a la pagina de Brasil
        Then Hago click en menu de lenguaje
        Then Valido el hreflang de 'br' y voy al sitio
        Then Valido el lenguaje 'br'
        Then Valido que no se muestre el pais 'br'

    Scenario: Voy a la pagina de Mexico
        Then Hago click en menu de lenguaje
        Then Valido el hreflang de 'mx' y voy al sitio
        Then Valido el lenguaje 'mx'
        Then Valido que no se muestre el pais 'mx'

    Scenario: Voy a la pagina de Mexico visible
        Then Hago click en menu de lenguaje
        Then Valido que sea visible 'mx' y voy al sitio
        Then Valido el lenguaje 'mx'
        Then Valido que no se muestre el pais 'mx'

    Scenario: Voy a la pagina de Brasil visible
        Then Hago click en menu de lenguaje
        Then Valido que sea visible 'br' y voy al sitio
        Then Valido el lenguaje 'br'
        Then Valido que no se muestre el pais 'br'