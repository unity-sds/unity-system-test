Feature: MDPS_2_REQ-116
  MDPS managed services shall provide a common destroy mechanism for the <ARTIFACT>

  @ARTIFACT
  @venue
  Scenario Outline: Management console exists within a given venue for destroying packages
    Given a logged in Unity user
    And <ARTIFACT> is installed in the venue
    When I view <ARTIFACT> in the <venue> management console
    Then I have the option to destroy <ARTIFACT>

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |


    @test
    Examples: endpoints
      | venue  |
      | unity-venue/test |

  @venue
  Scenario Outline: I can destroy ARTIFACT via the management console
    Given a logged in Unity user
    And <ARTIFACT> is installed in the venue
    When I destroy <ARTIFACT> in the <venue> management console
    Then the <ARTIFACT> is removed from the management system
    And the resources are removed from my venue

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |


    @test
    Examples: endpoints
      | venue  |
      | unity-venue/test |