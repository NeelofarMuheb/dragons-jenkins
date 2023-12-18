
@Smoke
Feature: Token Verify

Background: 
  Given url "https://tek-insurance-api.azurewebsites.net"
  @Unit
   Scenario: create token with valid user and pass
   
    And path "/api/token"
    And request  {"username": "supervisor","password": "tek_supervisor"}
    When method post
    Then status 200
    And print response
  @Test
  Scenario: Verify valid token 
    And path "/api/token"
    And request  {"username": "supervisor","password": "tek_supervisor"}
    When method post
    
    Then status 200
    And print response
   Given path "/api/token/verify"
   And param token = response.token
   And param username = "supervisor"
   
   When method get
   
   
   Then status 200
   And print response
  