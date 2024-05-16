Feature: Delete api automation

Scenario: Test Delete service
Given url 'https://reqres.in/api/users/2'
Then method DELETE
Then status 200
And print response