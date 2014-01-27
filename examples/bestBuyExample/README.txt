Example Configuration Walk through

Browser: Firefox
Version: 26
Last Tested Date: January 18, 2014

(This example also worked on Chrome Version 29 as of January 18, 2014)

BestBuy example demonstrates the following two capabilities:
1. optional scenario or optional action
	In AddToCart.feature, there is an action marked as optional:
				And (Optional) I CLICK "noThanks"
	The (optional) tag can be added to the beginning of an action or a scenario. The program will try to perform the scenario or action. But
	if it is failed, the program will skip and perform next scenarion/action.
  
2. Run multiple features together.
	In this example, we have two features, "AddToCart" and "CheckoutAsGuest". In jazz.properties, we simply add these two features
	together seperating them by comma as below:
		# features: can be a list of features, separated by comma
		features:AddToCart, CheckoutAsGuest  

(We purposely failed CheckoutAsGuest feature by changing the cartItems count as 3)
