Feature: MDPS_2_REQ-129
  The ability to monitor the health/status of a managed service.

  @shared
  Scenario Outline: Monitoring shared services
    Given I am an authorized user to the unity system
    When I access shared <service> at <endpoint>
    Then I get a successful response

    @develop
    Examples: services
      | service  | endpoint |
      | data-catalog | tbd |
      | dockstore    | tbd |
      | process-mapper | tbd |

    @test
    Examples: services
      | service  | endpoint |
      | data-catalog | tbd |
      | dockstore    | tbd |
      | process-mapper | tbd |

  Scenario Outline: Monitoring venue services
    Given I am an authorized user to the unity system
    When I access venue <service> at <endpoint>
    Then I get a successful response

    @develop
    Examples: services
      | service  | endpoint |
      | sps | tbd |
      | jupyter    | tbd |
      | sdap | tbd |

    @test
    Examples: services
      | service  | endpoint |
      | sps | tbd |
      | jupyter    | tbd |
      | sdap | tbd |