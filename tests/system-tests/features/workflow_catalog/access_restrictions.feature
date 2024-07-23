Feature: The workflow catalog shall provide the capability to restrict access to workflows. Allow projects to decide
  who can access a workflow, useful for development purposes.

  Scenario: Denied access to Unauthorized user
    Given I am an un-authorized user to the workflow catalog
    When I access a workflow
    Then request for access is denied