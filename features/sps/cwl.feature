Feature: MDPS_2_REQ-4
  The science processing platform shall allow execution of workflows conforming to the Common Workflow Language (CWL) specification

  Scenario Outline: The SPS shall be capable of executing CWL workflows - deployment
      Given the <project_name> <workflow_name> workflow is currently undeployed
      And the proper JSON data for the POST request body
      When a POST request is called on the WPS-T processes endpoint
      Then the HTTP response contains a status code of 201
      And the HTTP response body contains a DeploymentResult

      Examples:
      | project_name | workflow_name     |
      | sounder_sips |  L1A             |
      | sounder_sips |  L1B             |
      | sbg-dev |  L1B |
      | sbg-dev |  L2 |

  Scenario Outline: The SPS shall be capable of executing CWL workflows - execute
      Given the <project_name> <workflow_name> workflows are undeployed
      When an execution request is called on the WPS-T processes/{workflow_name} endpoint
      Then the HTTP response contains a status code of 201
      And the workflow is executed

      Examples:
      | project_name | workflow_name     |
      | sounder_sips |  L1A             |
      | sounder_sips |  L1B             |
      | sbg-dev |  L1B |
      | sbg-dev |  L2 |