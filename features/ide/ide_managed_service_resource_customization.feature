Feature: MDPS_2_REQ-158
  MDPS managed services (IDE) shall allow resource customization	(storage, memory, and CPU utilization)

  @venue
  Scenario Outline:  IDE storage customization 
    Given a logged in Unity users
    When I access the management console in <venue> venue
    Then I can select the <resource> for my IDE environment
    And I can define the maximum <resource> threshold 

    @develop
    Examples: venue and resource customization
      | venue           | resource      | 
      | unity-venue/dev | storage       |
      | unity-venue/dev | memory        |
      | unity-venue/dev | CPU           |