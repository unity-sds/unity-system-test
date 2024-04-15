# Tested Requirements: MDPS_2_REQ-30, MDPS_2_REQ-31, MDPS_2_REQ-33, MDPS_2_REQ-34, MDPS_2_REQ-35, MDPS_2_REQ-37

Feature: MDPS_2_REQ-34, MDPS_2_REQ-30, MDPS_2_REQ-31, MDPS_2_REQ-35
  The DAPA API is a set of function on the data. for the U-DS service
  area, this includes the listing of colleciton,s granules, the filtering of
  granules by time, and searching on project provided metadata

  # Access the {root}/collections endpoint
  @shared
  @MDPS_2_REQ-30
  @MDPS_2_REQ-35
  Scenario: List Collections
    Given a DAPA endpoint with multiple collections defined
    And the caller has set authentication
    When a request is made to the DAPA Collections endpoint
    Then the response is a STAC document
    And the response returns an HTTP 200
    And the response includes one or more collections
    And each collection has a collection Identifier


  # Access the {root}/collections/{collectionId}/items
  @shared
  @MDPS_2_REQ-30
  @MDPS_2_REQ-31
  Scenario: List products by Collection
    Given a DAPA endpoint with a colleciton defined
    And the collection has one or more products associated with it
    And the caller has set authentication
    When a request is made to the DAPA items endpoint for the specified collection
    Then the response is a STAC document
    And the response returns an HTTP 200
    And the response includes one or more granules
    And each granule has a temporal extent
    And each granule has one or more data access links

  # Access {root}/collections/{collectionId}/items?datetime=BeginningDate/EndingDate
  @shared
  @MDPS_2_REQ-34
  Scenario: Filter products by Collection and Time
    Given a DAPA endpoint with a colleciton defined
    And the collection has one or more products associated with it
    And the caller has set authentication
    When a request is made to the DAPA items endpoint for the specified collection and temporal range
    Then the response is a STAC document
    And the response returns an HTTP 200
    And the response includes one or more granules
    And each granule has a temporal extent
    And each granule has one or more data access links
    And no granuels listed are outside the range of the temporal extent specified

  @shared
  Scenario: Search on custom, project provided metadata
    Given asdadd

  # For the enar term, we should identify the access method as S3 access
  Scenario: Download product via S3
    Given a STAC Response Document specifying collection products with S3 links
    And the caller has set up S3 authentication
    When a user attempts to access a product data access link
    Then the response returns an HTTP 200
    And the object requested is succssfully downloaded
