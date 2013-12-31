Feature: Go to the Nike consumer web site, add a product to cart and all the way to checkout.

  Background: set up for the test
    Given the following settings:
      | url				| http://www.nike.com	    |
      | platform		| OSX 10.8     				|
      | browser        	| firefox 					|
      | browser version	| 28   						|                     |

  Scenario: Go to the nike portal page and verify the required elements.
    Given I am ON "NikeHomePage"
    Then I should EXPECT
      | menCategory              | visible              |
      | orderStatusButton        | visible              |
      | mainMenu                 | visible              |


  Scenario: Go to the mens shoes page.
    Given I am ON "NikeHomePage"
    And I CLICK "menCategory"
    And I CLICK "menShoes"
    Then I should be ON "MensShoes"

  Scenario: Validate the total product count and other key elements for the page.
    Given I am ON "MensShoes"
    Then I should EXPECT
      | productCount            |  791 Products         |
      | runningFacet            |  Running              |
      | basketballFacet         |  Basketball           |
      | jordanFacet             |  Jordan               |
#$action=com.dedrick.action.GetJordanFacet
  Scenario: Click on Nike Free 5.0
    Given I am ON "MensShoes"
    And I CLICK "nikeFreeImg"
    Then I should be ON "ProductDetailPage"

  Scenario: Validate Nike Free values
    Given I am ON the "ProductDetailPage"
    Then I should EXPECT
      | unitPrice               | $160                  |

  Scenario: Add 1 pair of size 12 shoes to the cart
    Given I am ON the "ProductDetailPage"
    And I CLICK the "sizesButton"
    And I CLICK "sizeTwelve"
    And I CLICK the "quantityButton"
    And I CLICK "quantityDropdown"
    And I CLICK "addToCartButton"
    And I WAIT 5 seconds
    Then I should EXPECT
      | quickCartCount          | 1                     |



