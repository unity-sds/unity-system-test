Feature: MDPS_2_REQ-159
  MDPS managed services shall report health metrics

  @venue
  Scenario Outline: Management console exists to display health metrics
    Given a logged in Unity users
    When I access the management console in <venue> venue
    Then I can list various <health metrics> to display
    And I can view the selected <health metrics> for a given timeframe or a job

    @develop
    Examples: venue and health metrics
      | venue           | health metric      |
      | unity-venue/dev | uptime             |
      | unity-venue/dev | request latency    |
      | unity-venue/dev | cpu usage          |
      | unity-venue/dev | memory usage       |
      | unity-venue/dev | storage usage      |
