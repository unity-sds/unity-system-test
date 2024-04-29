Feature: MDPS_2_REQ-158
  MDPS managed services shall allow resource customization	

  @venue
  Scenario Outline: Management console exists within a given venue for resource customization
    Given a logged in Unity users
    When I access the management console in <venue> venue
    Then I can list various resources to customize for my environment
    And I can modify these resource constraints based on my needs

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |