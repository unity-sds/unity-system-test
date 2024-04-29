Feature: MDPS_2_REQ-114
  MDPS managed services shall provide a common upgrade mechanism for the <ARTIFACT>

  @ARTIFACT
  @venue
  Scenario Outline: When an new version of ARTIFACT is available, i have the option to upgrade
    Given a logged in Unity user
    And <ARTIFACT> is installed in the venue
    And an upgrade of <ARTIFACT> is available
    When I view <ARTIFACT> in the <venue> management console
    Then I have the option to upgrade <ARTIFACT>

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |

    @test
    Examples: endpoints
      | venue  |
      | unity-venue/test |

  @venue
  Scenario Outline: I can upgrade ARTIFACT
    Given a logged in Unity user
    And <ARTIFACT> is installed in the venue
    And an upgrade of <ARTIFACT> is available
    When I upgrade <ARTIFACT> via the management console
    Then the new version of the artifact is installed
    And I have not lost my previous data
    And I have the option to roll back to a previous version

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |

    @test
    Examples: endpoints
      | venue  |
      | unity-venue/test |