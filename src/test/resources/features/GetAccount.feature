@Got
Feature: get account api
Background:
 *def result = callonce read('CreateToken.feature')
    And print result
    * def generatedToken = result.response.token
 
  Scenario: get account 
    Given url "https://tek-insurance-api.azurewebsites.net"
    And path "/api/accounts/get-account"
    
    And header Authorization = "Bearer "+ generatedToken
     And param primaryPersonId = 540
    And request 
    """
    {
  "primaryPerson": {
    "id": 540,
    "email": "p.demo11@gmail.com",
    "title": "Mr.",
    "firstName": "Paul",
    "lastName": "Dem",
    "gender": "MALE",
    "maritalStatus": "MARRIED",
    "employmentStatus": "CEO",
    "dateOfBirth": "2023-10-09"
  }
  """
    When method get
    Then status 200
    And print response