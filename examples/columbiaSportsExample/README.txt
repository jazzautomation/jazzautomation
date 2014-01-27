Example Configuration Walk through

Browser: Firefox
Version: 26
Last Tested Date: January 18, 2014

(This example also worked on Chrome Version 29 as of January 18, 2014)

ColumbiaSports example demonstrates the following four capabilities:
1. Using XML instead of JSON to configure pages.
   At jazz.properties, using XML is turned on by: 
   		useXml: true
   Make sure all pages should have a name like XXXXXX.xml. Please read how the tags are used.
   
2. optional scenario or optional action
	In ColumbiaSampleCheckout.feature, there is a scenario marked as optional and several actions marked as optional:
  		Scenario: (Optional) Go to the Country/Language page
    		Given I am ON "PortalLanguageChoose"
    		And I CLICK "countryLink"
    		Then I should be ON "PortalPage"
   
   			...
      		 And (optional) I CLICK "closeAd"     
  			... 
 
 	The (optional) can bed added to the beginning of an action or a scenario. The program will try to perform the scenario or action. But
	if it is failed, the program will skip and perform next scenarion/action.
  			
3. Browser-specific configuration.
	In MenShirtsPage.xmxl, we have the following configuration. The "secondProduct-chrome" is working for Chrome and the
	"secondProduct-firefox" is for firefox.

		<entry>
			<key>secondProduct-chrome</key>
			<value>
				<jquery>$('.item-pic')[1]</jquery>
			</value>
		</entry>
		<entry>
			<key>secondProduct-firefox</key>
			<value>
				<jquery>$('.item-pic a')</jquery>
				<index>1</index>
		</value>
	
	In the feature page, one does NOT need to specify browser. The program will pick the right jquery based on browser. 
	For example,
	
	  Scenario: Click on the second item from the Men's shirt page
    	Given I am ON "MenShirtsPage" 
    	And I CLICK "secondProduct"
    	Then I should be ON "ShirtProductPage"
	
4. To specify a dom sequence, one can either use [sequenceNumber] or <index> tage to do it.
