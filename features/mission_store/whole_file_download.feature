 Feature: MDPS_2_REQ-55
   The mission store shall allow whole file download of data products

 # For the near term, we should identify the access method as S3 access
  Scenario: Download product via S3
    Given a STAC Response Document specifying collection products with S3 links
    And the caller is within the venue environment with
    When a user attempts to access a product data access link
    Then the response returns an HTTP 200
    And the object requested is succssfully downloaded


 # For the long term, a mechanism for downloading data via HTTPS
#   Scenario: Download product via https
#    Given a STAC Response Document specifying collection products with S3 links
#    And the caller has set up S3 authentication
#    When a user attempts to access a product data access link
#    Then the response returns an HTTP 200
#    And the object requested is succssfully downloaded