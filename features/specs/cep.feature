
@search_cep
Feature: Search cep by API
  As a post office user
  I can search address by cep
  So I should receive the respective address

  @valid_cep
  Scenario: TC001 - Valid cep
    Given I inform "13040089" cep by post office API
    When I receive the response "200"
    Then I should see the "cep" with "13040089"
      And I should see the "tipoDeLogradouro" with "Rua"
      And I should see the "logradouro" with "Manoel Sylvestre de Freitas Filho"
      And I should see the "bairro" with "Jardim Nova Europa"
      And I should see the "cidade" with "Campinas"
      And I should see the "estado" with "SP"

  @invalid_cep
  Scenario: TC002 - Invalid cep
    Given I inform "00000001" cep by post office API
    When I receive the response "404"
    Then I should see "Endereço não encontrado!" content
