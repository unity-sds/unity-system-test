Feature: MDPS_2_REQ-179
  The science processing platform shall be capable of notifying users of workflow execution errors

  @manual
  Scenario: The SPS gives a visual representation of one or more errors executing a workflow
    Given an SPS and one or more workflows with one or more errors
    When I log in to the UI
    Then I can see a visual indicator of a workflow error

  @manual
  Scenario: The SPS alerts users to errors within a workflow via email

  # error type can be "transient" or "fatal" - perhaps we only want to alert users on fatal errors, or after X number of transient errors
  @manual
  Scenario:  The SPS allows a user to filter the types of error an email alert is sent by workflow and error type

  @manual
  Scenario: Users can be notified through a message center about workflow errors