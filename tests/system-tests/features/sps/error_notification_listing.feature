Feature: MDPS_2_REQ-180
  The science processing platform shall be capable of listing recent workflow execution notifications

  @manual
  Scenario: The SPS can display the number of recent workflow errors for a given workflow
    Given a workflow with errors
    When I log in to the SPS dashboard
    And i navigate to a workflow overview or workflow status page
    Then i am presented with recent errors

  @manual
  Scenario: The SPS shall programatically report the number of recent workflow errors for a given workflow
    Given a workflow with errors
    When I query the workflow status
    Then the response includes the number of recent workflow errors