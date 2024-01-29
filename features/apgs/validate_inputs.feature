Feature: MDPS_2_REQ-163	 The APGS shall provide a mechanism to validate APGS inputs prior to build. this feature should
  allow for the validation of an application package repository (local or remote), checking to see structure and
  necessary build files are created. It should also be able to examine an output directory for required data
  (e.g. output files, stac files)

  @apgs
  Scenario: Valiadate a local python repository for process.ipynb and environment.yml
    Given a valid apgs repository with environment.yml
    When the apgs-validate routines are run on the valid apgs repository
    Then the apgs-validate routine returns a success

  @apgs
  Scenario: Valiadate a local python repository for process.ipynb, requirements.txt, runtime.txt
    Given a valid apgs repository with requirements.txt and runtime.txt
    When the apgs-validate routines are run on the valid apgs repository
    Then the apgs-validate routine returns a success

  @apgs
  Scenario: Valiadate a local python repository for process.ipynb only
    Given an invalid apgs repository with only process.ipynb
    When the apgs-validate routines are run on the valid apgs repository
    Then the apgs-validate routine returns a failure
    And the apgs-validate routine contains an error

#  @apgs
#  Scenario: Valiadate a local python repository outputs (outputs and stac information)
#    Given an application-package output directory
#    When the apgs-validate routines are run on the application-package output directory
#    Then the apgs-validate routine returns a success

