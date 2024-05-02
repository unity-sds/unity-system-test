Feature: MDPS_2_REQ-116
  MDPS managed services shall provide a common destroy mechanism for the IDE

  @ARTIFACT
  @venue
  Scenario Outline: Management console exists within a given venue for destroying packages
    Given a logged in Unity user
    And IDE is installed in the venue
    When I view IDE service listed in the <venue> management console
    Then I have the option to destroy the IDE service

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |


    @test
    Examples: endpoints
      | venue  |
      | unity-venue/test |

  @venue
  Scenario Outline: Destroy IDE via the management console
    Given a logged in Unity user
    And IDE is installed in the venue
    When I destroy IDE in the <venue> management console
    Then the IDE is removed from the management system
    And the resources are removed from my venue

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |


    @test
    Examples: endpoints
      | venue  |
      | unity-venue/test |