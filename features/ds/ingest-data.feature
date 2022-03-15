Feature: Ingest (copy and catalog) Data in S3 with the U-DS Catalog
  This test will register a product (one or more files) with the U-DS catalog based on the
  implementation standards documented in the unity architecture. There will be
  no mention of 'cumulus' or 'cmr' or other underlying implementations

  Scenario: Ingest SounderSIPS data
    Given SounderSIPS data exists at an accessible location
    But the data are not in a Unity owned bucket
    And a collection has been created for this product
    And a CNM has been created for the product
    When a CNM request is sent to the ingest endpoint
    Then the product shall be copied to a Unity owned bucket
    Then the product should be searchable in the catalog
    And the search result maps to the new file

  Scenario: User Provided file
    Given a registered user
    And a data product to upload
    And a collection has been created for this product
    When a user uploads the product
    Then the product shall be copied to a Unity owned bucket
    Then the product should be searchable in the catalog
    And the search result maps to the new file
    And the search result maps to a collection
