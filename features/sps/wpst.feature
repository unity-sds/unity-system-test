Feature: MDPS_2_REQ-2, MDPS_2_REQ-177
  The science processing platform shall provide a Web Processing Service Transactional(WPS-T) interface for workflow management

  Scenario Outline: WPS-T Deploy: Request deployment of a currently undeployed algorithm process
      Given the <project_name> <process_name> algorithm process is currently undeployed
      And the proper JSON data for the POST request body
      When a POST request is called on the WPS-T processes endpoint
      Then the HTTP response contains a status code of 201
      And the HTTP response body contains a DeploymentResult

      Examples:
      | project_name | process_name     |
      | sounder_sips |  L1A             |
      | sounder_sips |  L1B             |
      | sounder_sips |  chirp |


  Scenario Outline: WPS-T List Executions: View jobs executes for a given process
      Given the <project_name> <process_name> algorithm process is currently undeployed
      And the proper JSON data for the POST request body
      When a POST request is called on the WPS-T processes endpoint
      Then the HTTP response contains a status code of 201
      And the HTTP response body contains a DeploymentResult

      Examples:
      | project_name | process_name     |
      | sounder_sips |  L1A             |
      | sounder_sips |  L1B             |
      | sounder_sips |  chirp |

  Scenario Outline: WPS-T List Processes A process is currently deployed and a request is made to list the OGC processes
      Given the <project_name> <process_name> algorithm process has been deployed to the ADES
      When a GET request is called on the WPS-T processes endpoint
      Then the HTTP response contains a status code of 200
      And the response includes process summary elements
      And the process summary included the <process_name> processor

      Examples:
      | project_name | process_name     |
      | sounder_sips |  L1A             |
      | sounder_sips |  L1B             |
      | sounder_sips |  chirp |

  Scenario Outline: WPS-T Execute and Status After requesting execution of a process, a job status request is made
      Given the <project_name> <process_name> algorithm process has been deployed to the ADES
      And a WPS-T request is made to execute the process
      And the HTTP response contains a status code of 201
      And the response includes a Location header
      And the Location header contains a job ID
      When a WPS-T request is made to get the status of the job by its ID
      Then the HTTP response contains a status code of 200
      # And the response contains an OGC StatusInfo document
      And the processing status is one of "succeeded", "failed", "accepted", or "running"

      Examples:
      | project_name | process_name     |
      | sounder_sips |  L1A             |
      | sounder_sips |  L1B             |
      | sounder_sips |  chirp |

  Scenario: WPS-T DescribeProcess

  Scenario: WPS-T Execute and DismissProcess
    Given a sample deployed application package
    And the sample deployed process is executed
    When the sample process execution is dismissed
    Then the sample process execution is stopped
    And the sample process execution status is 'aborted'