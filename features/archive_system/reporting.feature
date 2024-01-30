Feature: MDPS_2_REQ-44
  Ability to report on metrics for archive responses for a single submission and aggregate reporting on granules over time.

  Scenario Outline: Check on the status of a previously submitted archive job
    When i query the archive status of <product>
    Then i get an archive status response
    And the status field in the archive status response is <status>
    And the received time field in the archive status response is not empty
    And the completed time field in the archive status response is not empty

    @develop
    Examples: products
      | product  | status |
      | foo:bar | success |
      | bar:foo | failed |

    @test
    Examples: products
      | foo:bar | success |
      | bar:foo | failed |

  Scenario Outline: Check on the aggregate statistics of a collection with archived products
    When i query the archive status of <collection>
    Then i get an archive collection status response
    And the count field in the archive status response is <status>
    And the latency field in the archive status response is not empty

    @develop
    Examples: products
      | collection  | status |
      | foo:bar | 20 |
      | bar:foo | 100 |

    @test
    Examples: products
      | collection  | status |
      | foo:bar | 20 |
      | bar:foo | 100 |