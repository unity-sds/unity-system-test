
Feature: Science Processing Service
  The ADES is fronted by a WPS-T service which allows for the deployment and
  undeployment of application packages. It also allows for the exectuion,
  status, and retrievel of job submissions. This is captured in the zenhub epic
  at https://app.zenhub.com/workspaces/unity-workspace-61d4b6a48ed26b001d7d184a/issues/unity-sds/unity-sps-prototype/57

  Scenario: Request an Aglorithm Deployment

  Scenario: Undeploy an Algorithm deployment

  Scenario: Get the inputs for a given Algorithm deployment

  Scenario: Request L1A Processing from an Algorithm deployment
    Given the SoundsSIPS L1A algorithm has been deployed to the ADES
    And SounderSIPS L0 data exists for a 2 hour block of Data in the Unity system
    When a WPS-T request is made to execute the job and the defined L0 Data
    Then a WPS-T response includes a 302
    And the response redirects users to a job status page
    And the response redirection includes job processing status

  Scenario: Request L1B Processing from an Algorithm deployment
    Given the SoundsSIPS L1B algorithm has been deployed to the ADES
    And SounderSIPS L1A data exists in the Unity system
    When a WPS-T request is made to execute the job and the defined L1A Data
    Then a WPS-T response includes a 302
    And the response redirects users to a job status page
    And the job status page returns a HTTP 200
    And the job status processing status is one of "PENDING", "IN PROGRESS", or "COMPLETE"

  Scenario: Get the result of a process request
    Given a job processing id for L0 to L1A processing Request
    When a user queries the WPS-T for the given job Id
    Then the job status page returns a HTTP 200
    And the job status processing status is one of "PENDING", "IN PROGRESS", or "COMPLETE"
