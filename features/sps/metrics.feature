Feature: MDPS_2_REQ-11
  The science processing platform shall provide workflow and application package execution metrics

  @manual
  Scenario: Retrieve runtime for a given execution
    Given an SPS with one or more deployed workflows
    And 1 or more executions for a given workflow
    And I am logged into the EMS UI
    When i navigate to a specific workflow execution
    Then I can view the workflow's run duration


  @manual
  Scenario: Retrieve cpu usage for a given execution
    Given an SPS with one or more deployed workflows
    And 1 or more executions for a given workflow
    And I am logged into the EMS UI
    When i navigate to a specific workflow execution
    Then I can view the workflow's cpu usage


  @manual
  Scenario: Retrieve memory usage for a given execution
    Given an SPS with one or more deployed workflows
    And 1 or more executions for a given workflow
    And I am logged into the EMS UI
    When i navigate to a specific workflow execution
    Then I can view the workflow's memory usage