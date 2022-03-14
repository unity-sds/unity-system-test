Feature: Register Data in S3 with the U-DS Catalog
  This test will register a product (one or more files) with the U-DS catalog based on the
  implementation standards documented in the unity architecture. There will be
  no mention of 'cumulus' or 'cmr' or other underlying implementations

  Scenario: Register a file on disk into a known collection
    Given a product exists in an S3 bucket
    And a collection has been created for this filetype
    And a CNM has been created for the product
    When a CNM request is sent to the ingest endpoint
    Then the product should be searchable in the catalog
    And the file maps back to the original file

  Scenario: Register a file on disk with mal-formed CNM
    Given a product exists in an S3 bucket
    And a collection has been created for this filetype
    And an invalid CNM has been created for the product
    When a CNM request is sent to the ingest endpoint
    Then the product should not be searchable in the catalog
    And a error message has been added to the queue

  Scenario: Register a non-existent file on disk
    Given a collection has been created for this filetype
    And a CNM has been created for the product
    But the CNM message references a non-existent object
    When a CNM request is sent to the ingest endpoint
    Then the product should not be searchable in the catalog
    And a error message has been added to the queue

  Scenario: Register a file on disk into an unknown collection
    Given a product exists in an S3 bucket
    And a collection has not been created for this filetype
    And a CNM has been created for the product
    When a CNM request is sent to the ingest endpoint
    Then the product should be searchable in the catalog
    And the file maps back to the original file
    And the file size matches the CNM file size
