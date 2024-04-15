Feature: MDPS_2_REQ-33
  The results of data catalog requests are in STAC format

  # Access the {root}/collections endpoint
  @shared
  @data-catalog
  Scenario Outline: Confirm STAC-results from data catalog:get_Collections
    Given an authenticated Unity user
    When a request is made to the DAPA endpoint at <endpoint>
    Then the response is a STAC document

    @develop
    Examples: endpoints
      | endpoint  |
      | https://github.com/unity-sds/unity-example-application.git |

    @test
    Examples: endpoints
      | endpoint  |
      | https://github.com/unity-sds/unity-example-application.git |

  #Access the {root}/collections/collection/items endpoint
  @shared
  @data-catalog
  Scenario Outline: Confirm STAC-results from data catalog:get_items
    Given an authenticated Unity user
    And a collection in the unity <endpoint>
    When a request is made to the DAPA endpoint at <endpoint>
    Then the response is a STAC document

    @develop
    Examples: endpoints
      | endpoint  |
      | https://github.com/unity-sds/unity-example-application.git |

    @test
    Examples: endpoints
      | endpoint  |
      | https://github.com/unity-sds/unity-example-application.git |