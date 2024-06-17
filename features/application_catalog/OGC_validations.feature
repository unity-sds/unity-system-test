Feature: MDPS_2_REQ-70
  The application catalog shall provide the capability to publish application packages conforming to the published OGC Best Practice for Earth Observation Application Package

  Scenario: Successful Publication of an OGC Application Package
    Given I am an authorized user to the application catalog
    When I submit a valid application package publication request
    Then publication request is successful
    And I can view the published application in application catalog

  Scenario: Unsuccessful Publication of an OGC Application Package as non-logged in user
    Given I am an unauthorized user to the application catalog
    When I submit a valid application package publication request
    Then publication request is unsuccessful

  Scenario: Unsuccessful Publication of a non-conforming OGC Application Package
    Given I am an authorized user to the application catalog
    When I submit a valid application package publication request
    Then publication request is unsuccessful
