Feature: MDPS_2_REQ-164, MDPS_2_REQ-165, MDPS_2_REQ-80, MDPS_2_REQ-81
  Authorized users can request an application package build. Builds can be statused, and resulting artifacts can
  be found in the application catalog  and artifact repository

  @apgs
  Scenario Outline: Successful Application Package Builds
    Given I have a token to authenticate with Unity Services
    When I submit <repo_name> to the apgs build system
    Then the apgs build response is <result>
#    And I wait for the apgs build to complete
#    And the completed apgs build information references <repository>
#    And the completed apgs build information references the application catalog

    @develop
    Examples: repos
      | repo_name  | result | artifact_repo |
      | https://github.com/unity-sds/unity-example-application.git | success | dockerhub |


    @test
    Examples: repos
      | repo_name  | result | artifact_repo |
      | https://github.com/unity-sds/unity-example-application.git | success | dockerhub |

  @apgs
  Scenario: Unsuccessful Application Package Builds from non-existent repo
    Given I have a token to authenticate with Unity Services
    When I submit a non-existent repo to the apgs build system
    Then the apgs build response is fail

  @apgs
  Scenario: Unsuccessful Application Package Builds from mal-formed repo
    Given I have a token to authenticate with Unity Services
    When I submit a mal-formed repo to the apgs build system
    # This will be success because the request is successful, but the build will be a failure.
    Then the apgs build response is success
#   And I wait for the apgs build to complete
#   And the completed apgs build information status is failed
#   And the completed apgs build information has a list of error messages
