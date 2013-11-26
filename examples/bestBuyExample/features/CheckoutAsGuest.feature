Feature: Go to bestbuy web site, add a TV to the cart and then checkout as a guest.

	
	Background: set up for the test
		Given the following settings:
		      	| url				| http://www.bestbuy.com	|
      			| platform			| VISTA       				|
      			| browser        	| firefox 					|	
      			| browser version	| 22   						|
	
	Scenario: Check productMenu is visible and cart items is 0 after open the web page
		Given I am ON "BestBuyPortalPage"
		Then I should EXPECT
		      	| productMenu		| visible				|
      			| giftMenu			| visible       		|
      			| cart            	| visible 				|
      			| cartItems			| 0           			|

	Scenario: Go to the Tv page
		Given I am ON "BestBuyPortalPage"
		And I CLICK "productMenu"
		And I CLICK "tvHomeTheaterSubMenu"
		Then I should be ON "TvHomeTheaterPage"
					
	Scenario: Go to the Tv and Video Page
		Given I am ON "TvHomeTheaterPage"
		And I CLICK "televisions"
		Then I should be ON "TvVideoPage"

	
	Scenario: Go to Product Tv page
		Given I am ON "TvVideoPage"
		And I CLICK "shopTVsBySize"
		And I WAIT 1 seconds
		And I CLICK "46To59TV"

	Scenario: Add a TV to cart
		Given I am on ProductTvPage
		And I CLICK "secondAddToCart"
		Then I should be ON "AddToCartPopupPage"


	Scenario: Close popup then see my shopping cart
		Given I am ON "AddToCartPopupPage"
		And I CLICK "goToYourCart"
		Then I should be ON "CartPage"
		

	Scenario: Check my cart, I should see one product in my cart
		Given I am ON "CartPage"
		Then I should EXPECT
		      	| cartItems		| 1			|
		      	
	Scenario: Go to Checkout page
		Given I am ON "CartPage"
		And I Click "delivery"
		And I WAIT 5 seconds		
		And I CLICK "checkout"		
		And I WAIT 2 seconds		
		Then I should be ON "CheckoutPage" 
	
	Scenario: Checkout As a guest
		Given I am ON "CheckoutPage"
		And I CLICK "checkoutAsGuest"
		Then I should be ON "BillingAddressPage"
		
