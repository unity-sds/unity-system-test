Feature: MDPS_2_REQ-174
  The science processing platform shall provide aggregate workflow execution metrics
  run duration, cpu usage, memory usage(, disk usage?)(, worker details - total memory, cpu, etc?)

  @manual
  Scenario: Retrieve min, max, and average runtimes for a given workflow
    Given an SPS with one or more deployed workflows
    And 2 or more executions for a given workflow
    When i log in to the SPS UI
    Then I can view maximum run duration of the given workflow
    And I can view minimum run duration of the given workflow
    And I can view mean run duration of the given workflow

  @manual
  Scenario: Retrieve min, max, and average cpu usage for a given workflow
    Given an SPS with one or more deployed workflows
    And 2 or more executions for a given workflow
    When i log in to the SPS UI
    Then I can view maximum cpu usage of the given workflow
    And I can view minimum cpu usage of the given workflow
    And I can view mean cpu usage of the given workflow


  @manual
  Scenario: Retrieve min, max, and average memory usage for a given workflow
    Given an SPS with one or more deployed workflows
    And 2 or more executions for a given workflow
    When i log in to the SPS UI
    Then I can view maximum memory usage of the given workflow
    And I can view minimum memory usage of the given workflow
    And I can view mean memory usage of the given workflow