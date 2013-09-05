jazzautomation
==============

Jazz Automation is open source tool built on Java that and uses several open source libraries. Users of Jazz Automation are free to contribute to the product using the GIT repository.

Jazz Automation allows for flexible, repeatable, and configurable testing of web based user interfaces. Jazz Automation can be used with any browser on any platform and is operating system independent. Jazz Automation enables data driven testing (expectation/verification) as well as traditional user interface element detection. With Jazz automation, organizations are free to perform more exploratory and negative testing since Jazz Automation enables the organization to automate 'Happy Path' and regression testing.

Please visit http://www.jazzautomation.com/


How do I run the examples?

	To run the examples, you will need to setup the environment by specifying the configuration to be loaded and the test features to be executed: 
	
		Windows:

			>set JAVA_OPTS=-Djazz.configs="examples\bestBuyExample" -Dfeatures=AddToCart,CheckoutAsGuest
			>bin\jazzautomation.bat

		Unix/Mac:
			>export JAVA_OPTS="-Djazz.configs=examples/bestBuyExample -Dfeatures=AddToCart,CheckoutAsGuest"
			>bin/jazzautomation
	

	By default, reports will be generated in reports folder. You can customize the reporting directory by adding and additional parameter to JAVA_OPTS. For example,
		JAVA_OPTS="-Djazz.configs=examples\bestBuyExample -Dfeatures=AddToCart,CheckoutAsGuest -Djazz.reports=my_reports"
	



For more information on setting up test features for your own pages,

	Please read the configuration documents contained in docs folder.


