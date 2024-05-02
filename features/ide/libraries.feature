Feature: MDPS_2_REQ-76
  IDE customization shall include the inclusion of project defined libraries and resources to IDEs

  @ide
  @venue
  @manual
  Scenario: Ability to share project required libraries within the IDE
    Given a shared folder within the IDE
    When I write code samples within the shared location
    Then it is accessible by other users within the same IDE (venue)


  Scenario: Ability to define project required libraries within the IDE
    Given a shared folder within the IDE
    When I define project required libraries within my sample code
    Then it is accessible within the same IDE (venue)