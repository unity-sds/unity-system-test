Feature: MDPS_2_REQ-36
  Ingest (catalog) Data in S3 with the U-DS Catalog
  This test will register a product (one or more files) with the U-DS catalog based on the
  implementation standards documented in the unity architecture. There will be
  no mention of 'cumulus' or 'cmr' or other underlying implementations

  @shared
  @data-catalog
  Scenario: Catalog a Data File in the data catalog
    Given data to be cataloged exists in an S3 bucket
    And a collection for the data to be cataloged in has been created
    And metadata for the data exist alongside the data
    When a catalog request is made to the data catalog services
    Then the product are cataloged
    And the metadata are cataloged