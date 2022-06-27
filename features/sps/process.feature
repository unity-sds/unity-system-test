
Feature: Science Processing Service
  The ADES is fronted by a WPS-T service which allows for the deployment and
  undeployment of application packages. It also allows for the exectuion,
  status, and retrievel of job submissions. This is captured in the zenhub epic
  at https://app.zenhub.com/workspaces/unity-workspace-61d4b6a48ed26b001d7d184a/issues/unity-sds/unity-sps-prototype/57

  Scenario: Request an Aglorithm Deployment

  Scenario: Undeploy an Algorithm deployment

  Scenario: List deployed WPS Processes
    Given the SoundsSIPS L1A algorithm has been deployed to the ADES
    And the SoundsSIPS L1B algorithm has been deployed to the ADES
    When GetCapabilities is called on the WPS-T endpoint
    Then the WPS-T response is an http-200 Status
    And the response includes process summary elements
    And the process summary included the L1A and L1B processors

  Scenario: Get the inputs for a given Algorithm deployment
    Given the SoundsSIPS L1A algorithm has been deployed to the ADES
    When DescribeProcess is called on the WPS-T endpoint for the L1A Algorithm
    Then the WPS-T endpoint responds with a ProcessOfferings response
    And the response page returns a HTTP 200
    And the response page includes the one or more input element
    # more to add here?

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
    And the response redirects users to an OGC StatusInfo page
    And the response page returns a HTTP 200
    And the OGC StatusInfo processing status is one of "Succeeded", "Failed", "Accepted", or "Running"

  Scenario: Get the result of a process request
    Given a job processing id for L0 to L1A processing Request
    When a user queries the WPS-T for the given job Id
    Then the job status page returns a HTTP 200
    And the OGC StatusInfo processing status is one of "Succeeded", "Failed", "Accepted", or "Running"
