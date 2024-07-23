Feature: The workflow catalog shall allow the publishing of data processing workflows. The Workflow Catalog needs to be
  able to take in new or versioned workflows and make them available in the system.
  Requirement: MDPS_2_REQ-22

  Scenario:  Successful publication of new workflow catalog
    Given I am an authorized user to the workflow catalog
    When I submit a publication request for valid and new workflow package 
    Then publication request is successful
    And the new workflow catalog is available in the system with a new version number

  Scenario:  Successful publication of a pre-existing workflow catalog
    Given I am an authorized user to the workflow catalog
    When I submit a publication request for pre-existing workflow package with an update
    Then publication request is successful
    And the updated workflow catalog is available in the system with a new version number
