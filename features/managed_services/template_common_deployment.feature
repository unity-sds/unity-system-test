Feature: MDPS_2_REQ-110
  MDPS managed services shall provide a common deployment mechanism for the <ARTIFACT>

  @venue
  Scenario Outline: Management console exists within a given venue for installing packages
    Given a logged in Unity user
    When I access the management console in <venue> venue
    Then I can list applications i can install
    And the <application> is listed in the resulting install list

    @develop
    Examples: venue
      | venue  | url | application |
      | unity-venue/dev | asd | <ARTIFACT>   |


    @test
    Examples: endpoints
      | venue  | url | application |
      | unity-venue/test | asd | <ARTIFACT>   |