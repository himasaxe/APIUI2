Feature: First API run


#Scenario: Session1
#Given url 'https://reqres.in/api/users/2'
#When method GET
#Then status 200


Scenario: Session2
Given url 'https://reqres.in/api/users/2'
#Then params page = 2
When method GET
Then status 200
And print '#####################################################'
And print response
And print responseStatus
And print responseTime

#Then match response.data.id != null
Then match $.data.email == "janet.weaver@reqres.in"