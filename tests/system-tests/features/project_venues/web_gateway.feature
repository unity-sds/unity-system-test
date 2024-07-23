Feature: MDPS_2_REQ-160
  Project Venue resources shall be requested through a centralized endpoint (Web Gateway)


    Scenario Outline: Access venue services through Unity Web Gateway
    Given a logged in unity user
    When I access <venue> <service>
    Then I am returned a successful response

     @develop
     Examples: service
       | venue | service  |
       | unity-venue-dev | ades-wpst/processes |
       | unity-venue-dev | algorithm/dev |
       | unity-venue-dev | dashboard |

     @test
     Examples: service
       | service  | service |
       | unity-venue-test | ades-wpst/processes |
       | unity-venue-test | algorithm/dev |
       | unity-venue-test | dashboard |