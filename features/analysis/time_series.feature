Feature: MDPS_2_REQ-87 The transformation and analysis system shall provide timeseries calculations on
  transformation requests. Make sure we can request a time series from the DAPA endpoint for the given
  collecitons

  @analysis-services
  @venue
  Scenario Outline: An existing collection is queries to retrieve a time series from the underlying analysis endpoint

    When I query a time-series process for <collection_name> from the dapa endpoint
    Then the time-series response is successful
    #And the time-series response is a stac catalog
    #And the time-series response contains an asset with type "data"
    #And the time-series data result asset contains a valid href
    And the time-series data result is a json timeseries

    @develop
    Examples: collections
      | collection_name  | venue | start | stop |
      | urn:nasa:unity:ssips:TEST1:CHRP_16_DAY_REBIN___1 | dev | 20230101T00:00:00Z | 20230130T23:23:23Z |


    @test
    Examples: collections
      | collection_name  | venue | start | stop |
      | urn:nasa:unity:ssips:TEST1:CHRP_16_DAY_REBIN___1 | dev | 20230101T00:00:00Z | 20230130T23:23:23Z |