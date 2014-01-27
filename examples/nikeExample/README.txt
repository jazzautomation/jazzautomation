Example Configuration Walk through

Browser: Firefox
Version: 26
Last Tested Date: January 18, 2014

(This example also works on Chrome Version 29 as of January 18, 2014)

Nike example demonstrates the following two capabilities:
1. Dynamic value loading. 
	Instead of static checking values of an expect, there is a way to dynamically determine product counts. For example,
	in this feature, the productCount is "810". However, the site can change dynamically based on inventories or seasonalities.
	There are two way to make the automated testing more dynamic. 
		a. write a pre-process program such as ruby, groovy or any other languages, pre-processing the feature file.  
	      | productCount            |  ${productCount} Products         |
		b. write a customized java plugin
			 | productCount            |  $action=com.dedrick.action.GetProductCountFacet | 
		  (please consult jazzautomation for how we support this capability)
		
2. Commenting
	Using "#" in the feature file to comment.
