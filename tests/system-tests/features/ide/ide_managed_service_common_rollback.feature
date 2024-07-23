Feature: MDPS_2_REQ-115
  MDPS managed services shall provide a common rollback mechanism for the IDE when applicable

  @IDE
  @venue
  Scenario Outline: When an error occurs during upgrade for IDE, an automated rollback occurs
    Given a logged in Unity user
    And IDE is installed in the venue
    And an upgrade of IDE deployment is in progress
    When an error occurs in the IDE deployment
    Then the IDE is rolled back to the most recent version automatically

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |

    @test
    Examples: endpoints
      | venue  |
      | unity-venue/test |

  @venue
  Scenario Outline: Manually rollback IDE after an upgrade
    Given a logged in Unity user
    And IDE is installed in the venue
    And an upgrade of IDE has recently completed successfully
    When I view IDE in the <venue> management console
    Then I have the option to rollback IDE
    And I have the option to destroy the previous version

    @develop
    Examples: venue
      | venue  |
      | unity-venue/dev |

    @test
    Examples: endpoints
      | venue  |
      | unity-venue/test |