Feature: MDPS_2_REQ-176
  The science processing platform shall provide detailed logs for workflow executions

  @manual
  Scenario: View run-time logs of an executed workflow
    Given an SPS with one or more deployed workflows with 1 or more executions
    When I log in to the UI
    Then I can view the logs of a given execution