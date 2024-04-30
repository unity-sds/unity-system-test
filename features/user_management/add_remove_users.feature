Feature: MDPS_2_REQ-142
  The user management system shall provide the capability to add and remove users from the MDPS


  @manual
  Scenario: MDPS admins can add a user to the MDPS system
    Given an MDPS admin is logged in to AWS
    When the user is added to MDPS System
    Then the user now has access to basic Unity services

  @manual
  Scenario: MDPS admins can remove a user from the MDPS system
    Given an MDPS admin is logged in to AWS
    When the user is remove from MDPS System
    Then the user no longer has access to basic Unity services
