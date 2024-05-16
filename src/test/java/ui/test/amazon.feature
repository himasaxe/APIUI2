Feature: my ui 

@Test(groups={"uitest"})
Scenario: browser
Given configure driver = {type: 'chrome',addOptions:["--remote-allow-origins=*"],port:1234}
Given driver 'https://amazon.in/'
And driver.maximize()
Then delay(3000)
Then click("//input[@id='twotabsearchtextbox']")

Then delay(3000)
#Then click("//input[@id='twotabsearchtextbox']")

Then delay(13000)
#Then input('twotabsearchtextbox','hand')
Then input("//input[@id='twotabsearchtextbox']","hand")
Then delay(3000)












#And switchFrame("//iframe[@id='ape_Gateway_right-2_desktop_iframe']")
#Then delay(3000)
#Then click("//*[@id="ad"]/div/a")
##Then click("//div[@id='nav-xshop']//following::a[@class='nav-a']")
##And waitFor("{div/a}Sell")
#Then delay(8000)