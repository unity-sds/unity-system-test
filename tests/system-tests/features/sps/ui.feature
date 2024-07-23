Feature: MDPS_2_REQ-6
  The science processing platform shall provide a user interface for workflow monitoring

  @manual
  Scenario: SPS UI is available to SPS users
    Given a deployed SPS into a project venue
    When i navigate a browser to mdps.mcp.nasa.gov/project/venue/processing/ui
    Then i am presented with the SPS UI



