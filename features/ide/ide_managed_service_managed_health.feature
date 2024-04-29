Feature: MDPS_2_REQ-159
  MDPS managed services shall report health metrics

  @venue
  Scenario Outline: Management console exists to display health metrics
    Given a logged in Unity users
    When I access the management console in <venue> venue
    Then I can list various health metrics to display
    And I have the options to view the health metrics

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |