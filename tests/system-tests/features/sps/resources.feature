Feature: MDPS_2_REQ-10
  The science processing platform shall provision, manage, and release resources required for workflow processing

  @manual
  Scenario: SPS Minimum and maximum number cluster size can be set at deploy time
    Given a venue with a management console
    And SPS is not installed
    When I configure SPS for deployment
    Then I am given the option to set minimum number of instances
    And I am given the option to set maximum number of instances
    And I am able to specify instance types

  @manual
  Scenario: SPS Resources scaling up to, but not beyond the cluster maximum size
    Given a working SPS cluster
    And scaling parameters have been set
    When I add more jobs than maximum that can be fulfilled by the cluster
    Then the cluster scales up workers to accommodate the queued work
    And the cluster does not scale up beyond the maximum number of nodes

  @manual
  Scenario: When not in use, SPS Resources scale down, but not beyond the cluster minimum size
    Given a scaled up cluster
    When the work queued up is completed and no queued work remains
    Then the cluster scales down workers not in use
    And the cluster does not scale down beyond the minimum number of nodes