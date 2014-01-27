Feature: This is a template

  Background: set up for the test
    Given the following settings:
      | url				| http://www.myurl.com	    |
      | platform		| OSX 10.8     				|
      | browser        	| chrome 					|
      | browser version	| 28   						|

  Scenario: Validate home page elements.
    Given I am ON "HomePage"
    Then I should EXPECT
      | domElement1              | visible              |
      | domElement2              | visible              |
      | domElement3              | visible              |