
Feature: Get All Plan Code

 Background: setup request
 *def result = callonce read('CreateToken.feature')
    And print result
    * def generatedToken = result.response.token
 
  Scenario: Get all paln Code for cars
    Given url "https://tek-insurance-api.azurewebsites.net"
    And path "/get-all-plan-code"
    And header authorization = "Bearer " + generatedToken
    When method get
    Then status 200
    And print response

 