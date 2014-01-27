Example Configuration Walk through

Browser: chrome
Version: 29
Last Tested Date: January 18, 2014
Please download chromedriver from http://code.google.com/p/selenium/wiki/ChromeDriver and change jazz.properties 
accordingly.

(This example also works on Firefox Version 26 as of January 18, 2014)

Amazon example demonstrates the following two capabilities:
1. Using "id" or "cssSelector" to define/locate dom components.
   Please read HomePage.json for the configuration. For example, in that HomePage.json, we use 
   		"id": "nav-cart-count"
   to define cartCount, and we use 
   		"cssSelector" : ".nav-submit-input"
   to define the "Go" buttton on the search field
  
2. Dynamically enablng non-jquery enabled websites.
   Amazon.com does not have jquery support. However, you are free to use jquery to define dom components. 
   Please read SearchResultsPage.json and any other pages (other than HomePage.json) to see how we define these
   dom components.

You can use id/cssSelector/jquery together in a page to define dom components.   