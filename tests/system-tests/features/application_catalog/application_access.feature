Feature: MDPS_2_REQ-67 and MPDS_2_REQ-70
  The application catalog shall allow access to application packages from the centralized catalog

  @application-catalog
  @shared
  Scenario Outline: Successful Application Catalog Access
    When I access <app-package> from the Application Catalog as an non-logged in user
    Then the application catalog access request is successful

#    @develop
#    Examples: packages
#      | app-package  |
#      | https://github.com/unity-sds/unity-example-application.git |


    @test
    Examples: repos
      | app-package  |
      | http://awslbdockstorestack-lb-1429770210.us-west-2.elb.amazonaws.com:9998/api/ga4gh/trs/v2/tools/%23workflow%2Fdockstore.org%2Fmike-gangl%2Fcatalog-trial/versions/7/PLAIN-CWL/descriptor/%2FDockstore.cwl |
      | http://awslbdockstorestack-lb-1429770210.us-west-2.elb.amazonaws.com:9998/api/ga4gh/trs/v2/tools/%23workflow%2Fdockstore.org%2Fmcduffie%2Fchirp-rebinning-app-package/versions/5/PLAIN-CWL/descriptor/%2Fprocess.cwl |