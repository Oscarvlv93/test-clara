Feature: test-clara brasil

    Background: Ingreso al sitio de Brasil
        Given ingreso a la pagina de clara 'br'

    Scenario: Voy a la pagina de Colombia
        Then Hago click en menu de lenguaje
        Then Valido el hreflang de 'co' y voy al sitio
        Then Valido el lenguaje 'co'
        Then Valido que no se muestre el pais 'co'

    Scenario: Voy a la pagina de Mexico
        Then Hago click en menu de lenguaje
        Then Valido el hreflang de 'mx' y voy al sitio
        Then Valido el lenguaje 'mx'
        Then Valido que no se muestre el pais 'mx'

    Scenario: Voy a la pagina de Colombia visible
        Then Hago click en menu de lenguaje
        Then Valido que sea visible 'co' y voy al sitio
        Then Valido el lenguaje 'co'
        Then Valido que no se muestre el pais 'co'

    Scenario: Voy a la pagina de Mexico visible
        Then Hago click en menu de lenguaje
        Then Valido que sea visible 'mx' y voy al sitio
        Then Valido el lenguaje 'mx'
        Then Valido que no se muestre el pais 'mx'