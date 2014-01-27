Example Configuration Walk through

Browser: Firefox
Version: 26
Last Tested Date: January 18, 2014

(This example also works on Chrome Version 29 as of January 18, 2014)

DisneyWorld example demonstrates the following one capability:
1. WAIT feature
	For a slow site or slow response page, the WAIT is very necessay. In the feature page, we add
		
		...
	    And I WAIT 4 seconds
	    ...
	    
2. optional scenario or optional action
	In Regression.feature, there is an action marked as optional:
    	And (Optional) I CLICK "surveryModal"
	The (optional) can bed added to the beginning of an action or a scenario. The program will try to perform the scenario or action. But
	if it is failed, the program will skip and perform next scenarion/action.
