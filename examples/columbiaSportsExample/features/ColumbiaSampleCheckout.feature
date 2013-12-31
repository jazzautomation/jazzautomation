Feature: Go to the Columbia Sportswear web site, search for a product, review product
  details, add a product to cart, and then go through guest checkout.

  Background: set up for the test
  hope this work
    Given the following settings:
      | url                    | http://www.columbia.com    |
      | platform               | OSX 10.6                   |
      | browser                | firefox                    |
      | browser version        | 21                         |


  Scenario: (Optional) Go to the Country/Language page
    Given I am ON "PortalLanguageChoose"
    And I CLICK "countryLink"
    Then I should be ON "PortalPage"

  Scenario: Verify that we have an empty cart on the initial portal page
    Given I am ON "PortalPage"
    Then I should EXPECT
      | emptyCart              | 0 items              |

  Scenario: Go to the Men Shirts Page page by hovering and then clicking the men's shirt link
    Given I am ON "PortalPage"
    And I HOVER "menMenu"
    And I CLICK "menShirtsHoverLink"
    Then I should be ON "MenShirtsPage"


  Scenario: Go to the Men Shirts Page page and verify item visibility
    Given I am ON "MenShirtsPage"
    Then I should EXPECT
    | shirtsTitle               | visible             |

  Scenario: Click on the second item from the Men's shirt page
    Given I am ON "MenShirtsPage" 
    And I CLICK "secondProduct"
    Then I should be ON "ShirtProductPage"

  Scenario: Click on the second item from the Men's shirt page
    Given I am ON "ShirtProductPage"
    And I WAIT 2 seconds
    And (optional) I CLICK "closeAd"      
    And I CLICK "sizeM"
    And I CLICK "addToCart"
    And I CLICK "checkout"
    Then I should be ON "ShoppingCartPage"

  Scenario: Validate the flat rate shipping rate on the Shopping cart page
    Given I am ON "ShoppingCartPage"
    Then I should EXPECT
      | sixBuckflatRateShipping          | $6 Flat rate shipping |

  Scenario: Continue checking out from the Shopping Cart Page
    Given I am ON "ShoppingCartPage"
    And I (optional) CLICK "continueToCheckOut"
    Then I should be ON "CheckoutPage"

  Scenario: Check out as a guest
    Given I am ON "CheckoutPage"
    And I CLICK "checkoutAsGuest"
    Then I should be ON "CheckoutGuestPage"

  Scenario: Enter personal data on the Check Out A Guest page
    Given I am ON "CheckoutGuestPage"
    And I ENTER
    | firstName                 | Lukas                 |
    | lastName                  | Test                  |
    | address1                  | 1 Test Dr.            |
    And I SELECT
    | state                     | Oregon                |