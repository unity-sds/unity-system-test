Feature: Algorithm Catalog system tests

  Scenario: Algorithm Packages can be registered in the catalog
    Given an algorithm binary in an accessible repository
    And an algorithm descriptor
    When the algorithm descriptor is registered in the Algorithm Catalog
    Then the algorithm is searchable in the Algorithm catalog
    And the search result maps back to the algorithm binary

  Scenario: Search the catalog for an algorithm package
    Given a set of catalog algorithms
       | name      | binary              |
       | algo1     | https://algo1.com   |
       | algo2     | https://algo2.com   |
       | algo3     | https://algo3.com   |
    And the catalog algorithms are registered in the Algorithm Catalog
    When a user searches the algorithm catalog
    Then the search retrieves 3 results

  Scenario: Access an algorithm package from a catalog result
    Given a set of catalog algorthms
       | name      | binary              |
       | algo1     | https://algo1.com   |
       | algo2     | https://algo2.com   |
       | algo3     | https://algo3.com   |
    And the catalog algorithms are registered in the Algorithm Catalog
    When a user searches the algorithm catalog by name
    Then the user gets the algorithm package back
    And the algorithm package references the correct binary
    And the binary is accessible
