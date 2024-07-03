Feature: MDPS_2_REQ-59
  The IDE shall provide development environments access to MDPS data

  @venue
  Scenario: Listing MDPS Data from the Unity IDE
    Given the bucket or buckets available to the venue environment defined at venue set up
    When I execute an AWS S3 listing on the bucket from the IDE
    Then I get a result of the objects in that bucket

  @ide
  @venue
  @manual
  Scenario: Retrieve MDPS Data from the Unity IDE
    Given the bucket or buckets available to the venue environment defined at venue set up
    When I execute an AWS S3 to get an object in the bucket from the IDE
    Then I download the data to my IDE environment