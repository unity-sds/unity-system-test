Feature: MDPS_2_REQ-12
  The science processing platform shall provide workflow error and status messages to end users

  @manual
  Scenario: Workflow errors can be viewed from the EMS UI
    # covered by error_notifications.feature: The SPS gives a visual representation of one or more errors executing a workflow

  @manual
  Scenario: Workflow status can be viewed from the EMS UI
    Given i am logged into the EMS UI
    When I navigate to workflow detail
    Then I can view workflow status


  Scenario: Workflow errors can be viewed from the EMS API
    Given i am authenticated with the EMS API
    When I request a specific workflow
    Then I can view the errors for the given workflow

  Scenario: Workflow status can be viewed from the EMS API
    Given i am authenticated with the EMS API
    When I request a specific worflow
    Then I can view the status for the given workflow


  #Specific tests for remote executions
  #remote systems e.g. on premise, hybrid
  Scenario: Workflow status for executions in a remote system can be viewed from the EMS API

  Scenario: Workflow errors for executions in a remote system can be viewed from the EMS API