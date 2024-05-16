Feature: Put api automation

Scenario: Test PUT service
Given url 'https://reqres.in/api/users/2'
Then request {"name":"sunny","job":"bank"}
Then method PUT
Then status 200
And print response