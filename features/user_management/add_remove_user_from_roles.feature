Feature: MDPS_2_REQ-140
  The user management system shall provide the capability to add and remove users from authorization roles

  @manual
  Scenario: MDPS admins can add a user to an authorization role
    Given an existing role
    And a user without the existing role
    And an MDPS admin is logged in to AWS
    When the user is added to the existing role
    Then the user can access to resources requiring that role


  @manual
  Scenario: MDPS admins can remove a user from an authorization role
    Given an existing role
    And a user with the existing role
    And an MDPS admin is logged in to AWS
    When the user is removed from the role
    Then the user no longer has access to resources requiring that role


  @manual
  Scenario: MDPS admins can add a user to a venue system
    Given an MDPS admin is logged in to AWS
    When the user is added to venue roles
    Then the user now has access to basic venue services

  @manual
  Scenario: MDPS admins can remove a user from a venue system
    Given an MDPS admin is logged in to AWS
    When the user is removed from venue roles
    Then the user does not have access to basic venue services