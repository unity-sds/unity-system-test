Feature: MDPS_2_REQ-141
  The user management system shall provide the capability to add and remove authorization roles

  @manual
  Scenario: MDPS admins can add a role to a venue auth system
    Given an existing role
    And an MDPS admin is logged in to AWS
    When the role is added to cognito authorizers
    Then users with that role now have access to the venue system

  @manual
  Scenario: MDPS admins can add a role to the Unity system
    Given an MDPS admin is logged in to AWS
    When a role is created
    Then users can be added to the role
    And the role can be added to authorization systems