Feature: MDPS_2_REQ-115
  MDPS managed services shall provide a common rollback mechanism for the <ARTIFACT> when applicable

  @ARTIFACT
  @venue
  Scenario Outline: When an error occurs during upgrade for ARTIFACT, an automated rollback occurs
    Given a logged in Unity user
    And <ARTIFACT> is installed in the venue
    And an upgrade of <ARTIFACT> deployment is in progress
    When an error occurs in the <ARTIFACT> deployment
    Then the <ARTIFACT> is rolled back to the most recent version automatically

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |

    @test
    Examples: endpoints
      | venue  |
      | unity-venue/test |

  @venue
  Scenario Outline: I can manually rollback ARTIFACT after an upgrade
    Given a logged in Unity user
    And <ARTIFACT> is installed in the venue
    And an upgrade of <ARTIFACT> has recently completed successfully
    When I view <ARTIFACT> in the <venue> management console
    Then I have the option to rollback <ARTIFACT>
    And I have the option to destroy the previous version

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |

    @test
    Examples: endpoints
      | venue  |
      | unity-venue/test |