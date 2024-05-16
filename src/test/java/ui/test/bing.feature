Feature: my bing 

Background: 
Given configure driver = {type: 'chrome',addOptions:["--remote-allow-origins=*"],port:1234}


#Scenario: browser
#Given configure driver = {type: 'chrome',addOptions:["--remote-allow-origins=*"],port:1234}
#Given driver 'https://bing.com/'
#And driver.maximize()
#
#Then delay(3000)
##Then click("{a}Images")
#Then click("{^}Maps")
#Then delay(3000)



#Scenario: different web page functions
#Given driver 'https://bing.com/'
#And fullscreen()
#Then delay(4000)
#Then maximize()
#Then delay(4000)
#And refresh()
#Then delay(4000)
#Then reload()
#Then delay(4000)
#Then click("{a}Images")
#Then delay(4000)
#Then back()
#Then delay(4000)
#Then forward()

@ui @Test(groups={"uitest"})
Scenario: URL and Title
Given driver 'https://bing.com/'
Then delay(4000)
Then maximize()
Then print driver.title
Then print driver.url
Then driver.title == "Bing"