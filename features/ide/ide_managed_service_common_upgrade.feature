Feature: MDPS_2_REQ-114
  MDPS managed services shall provide a common upgrade mechanism for the IDE

  @ARTIFACT
  @venue
  Scenario Outline: When an new version of IDE is available, i have the option to upgrade
    Given a logged in Unity user
    And IDE is installed in the venue
    And an upgrade of IDE is available
    When I view IDE in the <venue> management console
    Then I have the option to upgrade IDE

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |

    @test
    Examples: endpoints
      | venue  |
      | unity-venue/test |

  @venue
  Scenario Outline: Upgrade IDE
    Given a logged in Unity user
    And IDE is installed in the venue
    And an upgrade of IDE is available
    When I upgrade IDE via the management console
    Then the new version of the IDE is installed
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