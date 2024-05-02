Feature: MDPS_2_REQ-59
  The IDE shall provide development environments access to MDPS data

  @venue
  Scenario: Access to MDPS Data from the Unity IDE
    Given the bucket or buckets available to the venue environment defined at venue set up
    When i do an aws s3 listing on the bucket from the IDE
    Then I get a result of the objects in that bucket

  @ide
  @venue
  @manual
  Scenario: Access to MDPS Data from the Unity IDE
    Given the bucket or buckets available to the venue environment defined at venue set up
    When i do an aws s3 get on an object in the bucket from the IDE
    Then I download the data to my IDE environment