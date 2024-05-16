Feature: my ui 

Background: 
Given configure driver = {type: 'chrome',addOptions:["--remote-allow-origins=*"],port:1234}


#Scenario: browser
#Given driver 'https://saucedemo.com/'
#Then delay(8000)
#And input("//input[@placeholder='Username']",'standard_user')
#Then delay(5000)
#And input("input[placeholder=Password]",'secret_sauce')
#Then delay(5000)
#And click("//input[type=submit]")


@ui @Test(groups={"uitest"})
Scenario: using wildcard friendly locators
Given driver 'https://login.salesforce.com/?locale=in'
Then delay(8000)
Then above("label[for=password]").find("input").input("secret_sauce")
Then below("label[for=password]").find("input").input("secret_sauce")
Then leftOf("label[for=rememberUn]").find("input").click()
Then delay(8000)
Then rightOf("//p[@class='di mr16']").find("a").click()
Then delay(18000)
Then near("//div[@class='firstName textFieldInput section']").input("himanshu")
Then delay(18000)



