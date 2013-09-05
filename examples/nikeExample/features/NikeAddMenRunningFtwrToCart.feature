Feature: Go to the Nike consumer web site, add a product to cart and all the way to checkout.
  This looks good!

  Background: set up for the test
  hope this work
    Given the following settings:
      | url				| http://www.nike.com	    |
      | platform		| OSX 10.8     				|
      | browser        	| chrome 					|
      | browser version	| 28   						|

  Scenario: Go to the nike portal page a verify the required elements.
    Given I am ON "NikeHomePage"
    Then I should EXPECT
      | menCategory              | visible              |
      | orderStatusButton        | visible              |
      | mainMenu                 | visible              |


  Scenario: Go to the men shoes page.
    Given I am ON "NikeHomePage"
    And I CLICK "menCategory"
    And I CLICK "menShoes"
    Then I should be ON "MensShoes"

  Scenario: Validate the total product count and other key elements
    Given I am ON "MensShoes"
    Then I should EXPECT
      | productCount            |  691 Products         |
      | runningFacet            |  Running              |
      | basketballFacet         |  Basketball           |
      | jordanFacet             |  Jordan               |

  Scenario: Click on Nike Flyknit Racer
    Given I am ON "MensShoes"
    And I CLICK "flyKnitRacerImg"
    Then I should be ON "FlyKnitRacerDetailPage"

  Scenario: Validate Fly Knit Racer Values
    Given I am ON the "FlyKnitRacerDetailPage"
    Then I should EXPECT
      | unitPrice               | $150                  |

  Scenario: Add 1 pair of size 10 shoes to the cart
    Given I am ON the "FlyKnitRacerDetailPage"
    And I CLICK the "sizesButton"
    And I CLICK "sizeSix"
    And I CLICK the "quantityButton"
    And I CLICK "quantityDropdown"
    And I CLICK "addToCartButton"
    And I WAIT 5 seconds
    Then I should EXPECT
      | quickCartCount          | 1                     |



