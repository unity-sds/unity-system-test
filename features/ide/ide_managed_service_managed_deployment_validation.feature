Feature: MDPS_2_REQ-182
  MDPS managed services shall be automatically validated upon deployment or rollback	

  @venue
  Scenario Outline: Whenever IDE service is deployed or rollbacked, then the service shall be automatically validated
    Given the IDE service is deployed or rollbacked
    And a logged in Unity user
    When I view the management console in <venue> venue
    Then I can view the state of the validation test of the IDE service

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |