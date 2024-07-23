Feature: The workflow catalog shall provide error messages upon invalid requests. Errors can occur when an
  ill-formatted workflow are supplied, missing parameters, or permissions based issues arise.

  Scenario:  Invalid Request with ill-formated workflow
    Given I am an authorized user to the workflow catalog
    When I submit a publication request for invalid workflow package, containing ill-formated workflow 
    Then publication request is unsuccessful
    And I can view the error message from the workflow catalog stating of invalid requests

  Scenario:  Invalid Request with missing parameter(s)
    Given I am an authorized user to the workflow catalog
    When I submit a publication request for invalid workflow package, with missing parameter(s) 
    Then publication request is unsuccessful
    And I can view the error message from the workflow catalog stating of invalid requests

  Scenario:  Invalid Request with invalid permissions
    Given I am an non-authorized user to the workflow catalog
    When I submit a publication request for invalid workflow package
    Then publication request is unsuccessful
    And I can view the error message from the workflow catalog stating of invalid requests