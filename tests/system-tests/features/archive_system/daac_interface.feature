Feature: MDPS_2_REQ-41, MDPS_2_REQ-43
  The submission and monitoring of an archive request to a DAAC.

  @archive-service
  @shared
  Scenario: A successful archive submission request to a DAAC
    Given a data product with appropriate metadata for daac archival
    When I submit the data product for archiving to a daac
    Then I can wait for a response
    And the response is successful

  @archive-service
  @shared
  Scenario: An unsuccessful archive submission request to a DAAC
    Given a data product with lacking metadata for daac archival
    When I submit the data product for archiving to a daac
    Then I can wait for a response
    And the response is unsuccessful