Feature: MDPS_2_REQ-177
  The science processing platform shall be capable of listing workflow executions

  @manual
  Scenario: The SPS can display the number of recent workflow executions
    Given an SPS with one or more workflow with one or more executions
    When I log in to the SPS UI
    And I navigate to a workflow overview or workflow status page
    Then I am presented with recent workflow executions

  @manual
  Scenario: The SPS can display the number of recent workflow executions and statuses for a given workflow
    Given an SPS with one or more workflow with one or more executions
    When I log in to the SPS UI
    And I navigate to a specific workflow status page
    Then I am presented with recent executions for the selected workflow

  @manual
  Scenario: The SPS shall programatically report the number of recent workflow executions and statuses for a given workflow
    Given an SPS with one or more workflow with one or more executions
    When I query the workflow status
    Then The response includes a listing of recent executions