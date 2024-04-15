Feature: MDPS_2_REQ-137
  The MDPS shall require all users to login.

  @manual
  Scenario Outline: Authorization is not required to access some services
    Given an unauthenticated Unity user
    When the user access <venue> <service>
    Then they are given a <response> response

    @develop
    Examples: service
      | venue  | service | response |
      | unity-dev | application_catalog | success |
      | unity-dev | workflow_catalog | success |
      | unity-dev | portal | success |
      | unity-dev| data_catalog | failure |
      | unity-venue-dev | processing | failure |
      | unity-venue-dev | ide | failure |
      | unity-venue-dev | analysis-service | failure |

    @test
    Examples: service
      | venue  | service | response |
      | unity-dev | application_catalog | success |
      | unity-dev | workflow_catalog | success |
      | unity-dev | portal | success |
      | unity-dev| data_catalog | failure |
      | unity-venue-dev | processing | failure |
      | unity-venue-dev | ide | failure |
      | unity-venue-dev | analysis-service | failure |

  @manual
  Scenario Outline: Authorization is required to access some services
    Given an authenticated Unity user
    When the user access <venue> <service>
    Then they are given a <response> response

    @develop
    Examples: service
      | venue  | service | response |
      | unity-dev | application_catalog | success |
      | unity-dev | workflow_catalog | success |
      | unity-dev | portal | success |
      | unity-dev| data_catalog | success |
      | unity-venue-dev | processing | success |
      | unity-venue-dev | ide | success |
      | unity-venue-dev | analysis-service | success |

    @test
    Examples: service
      | venue  | service | response |
      | unity-dev | application_catalog | success |
      | unity-dev | workflow_catalog | success |
      | unity-dev | portal | success |
      | unity-dev| data_catalog | success |
      | unity-venue-dev | processing | success |
      | unity-venue-dev | ide | success |
      | unity-venue-dev | analysis-service | success |