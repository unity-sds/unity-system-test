Feature: MDPS_2_REQ-196
  MDPS managed services shall be capable of alerting users based on health metrics

  @manual
  Scenario: Setting a health alert notification
    Given a service with health metrics being reported
    When I click "notify me" on a given health dashboard
    Then an alert will be sent when that health monitor value changes

    #Future scenario, setting thresholds for health metrics- e.g. if performance drops below values in the SLA (e.g. latency, throughput, etc)

    #Future scenario, expose lower level cloudwatch/health metrics?