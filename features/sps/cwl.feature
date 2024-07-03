Feature: MDPS_2_REQ-4
  The science processing platform shall allow execution of workflows conforming to the Common Workflow Language (CWL) specification

#  Scenario Outline: The SPS shall be capable of executing CWL workflows - deployment
#      Given the <project_name> <workflow_name> workflow is currently undeployed
#      And the application packages for the workflow are well-formed and published to the application catalog
#      When I request a run of <workflow_name>
#      And I provide the required workflow inputs
#      Then the HTTP response contains a status code of 201
#      And the HTTP response body contains a DeploymentResult
#
#      Examples:
#      | project_name | workflow_name     |
#      | sbg-dev      | unity-SBG-preprocess |
#      | sbg-dev |  L1B |
#      | sbg-dev |  L2 |
  @manual
  Scenario Outline: The SPS shall be capable of executing CWL workflows - execution
      Given the <project_name> <workflow_name> workflow is currently deployed
      And the application packages for the workflow are well-formed and published to the application catalog
      When I request a run of <workflow_name>
      And I provide the required workflow inputs
      Then the workflow is executed

      Examples:
      | project_name | workflow_name     |
      | sbg-dev      | unity-SBG-preprocess |
      | sbg-dev |  L1B |
      | sbg-dev |  L2 |