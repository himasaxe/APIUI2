Feature: Posst call

Background:
* url 'https://reqres.in/api'
* def requestbody = read('requestdata.json') 
* def resultbody = read('responsebody.json')

Scenario: Post request

Given url 'https://reqres.in/api/users'
Then request {"name":"honey","job":"leader"}
When method POST
Then status 201
And print response

Then match $ contains {id:"#notnull"}
Then match $ contains {id:"#string"}

Then match $ contains {name:"honey"}

Then match response ==  {"name": "honey","job": "leader",  "id": "#string", "createdAt": "#ignore"}

  
  Scenario: POST apis filedata1

Given path '/users'
Then request requestbody
And set requestbody.job = "dev"
When method POST
Then status 201
And print response

Then match $ contains {id:"#notnull"}
Then match response == resultbody

 

 
