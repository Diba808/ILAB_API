Feature: GET API DEMO


  Background: 
    * url 'https://dog.ceo/api' 
    * configure headers = { Accept : 'application/json' }
    
  # Simple Get Request
  @tag1
  Scenario: Getting dog breed mastiff
    Given path '/breeds/list/all'
    When method GET
    Then status 200
    And match response.message.mastiff[1] == "english"
    * print karate.get('$response[*].mastiff[1]')
		And print response