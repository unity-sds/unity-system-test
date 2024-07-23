Feature: MDPS_2_REQ-139
  The user management system shall provide a common authorization mechanism

  @manual
  Scenario: Authorization is tied to common authorization mechanism
    When i attempt to log in with my username and password
    Then i can succefully log in to one or more shared services
    And i can successfully log in to one or more venue services

    