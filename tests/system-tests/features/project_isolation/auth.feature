Feature: MDPS_2_REQ-95
  Project isolation shall include default user groups for A&A across all project venues


  Scenario: Verify that the default cognito roles exist within the system
    Given a unity user with AWS Access
    When we query for the default user roles
    Then we are returned Unity viewer and Unity admin roles

  Scenario Outline: Verify venue user roles exist
    Given a unity user with <venue> access
    When I query for cognito roles
    Then I am returned a set of roles including <role>

     @develop
    Examples: roles
      | venue  | role |
      | unity-venue-dev | venue_read |
      | unity-venue-dev | venue_admin |

    @test
    Examples: roles
      | venue  | role |
      | unity-venue-test | venue_read |
      | unity-venue-test | venue_admin |