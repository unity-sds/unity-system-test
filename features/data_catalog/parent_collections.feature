Feature: Ensure granules can be found by their parent collections

  Scenario Outline: An existing collection is queried to ensure granules can be found using it

    When i query <collection_name> from the data catalog
    Then the response has 1 or more granules

    @develop
    Examples: collections
      | collection_name  | venue |
      | urn:nasa:unity:ssips:TEST1:CHRP_16_DAY_REBIN___1 | dev |


    @test
    Examples: collections
      | collection_name   | venue |
      | urn:nasa:unity:ssips:TEST1:CHRP_16_DAY_REBIN___1 | test |
