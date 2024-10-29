Feature: Pokemon nombre evoluciones

  Background:
    * url apiUrl

  Scenario Outline: verificar evolucion
    Given path '<namePokemon>'
    When method GET
    Then status 200
    * print response

    Given url response.species.url
    When method GET
    Then status 200
    * print response

    Given url response.evolution_chain.url
    When method GET
    Then status 200
    * print response
    And match $.chain.evolves_to[0].species.name == '<PokemonEvolution_2>'
    And match $.chain.evolves_to[0].evolves_to[0].species.name == '<PokemonEvolution_3>'


    Examples: Gherkin
      | namePokemon | PokemonEvolution_2 | PokemonEvolution_3 |
      | charmander  | charmeleon         | charizard          |


  Scenario Outline: movimientos squirtle
    Given path '<namePokemon>'
    When method GET
    Then status 200
    * print response
    * def movimientos = $.moves[*].move.name
    * def movimientosOrdenados = movimientos.sort()
    * print movimientosOrdenados

    Examples: Gherkin
      | namePokemon |
      | squirtle    |