Feature: Disney regression testing

  Background: set up for the test
    Given the following settings:
      | url                | https://disneyworld.disney.go.com   |
      | platform           | OSX 10.8                            |
      | browser            | firefox                             |
      | browser version    | 23                                  |

  Scenario: Go to the Disney home page and verify the required elements.
    Given I am ON "HomePage"
    Then I should EXPECT
      | findPricesButton              | visible              |

  Scenario: Go the the Disney Activities page
    Given I am ON the "HomePage"
    And I CLICK "thingsToDoLink"
    Then I should be ON "ActivitiesPage"


#  Scenario: Dismiss modal if it is present
#    Given I am ON the "ActivitiesPage"
#    And (Optional) I CLICK "surveryModal"

  Scenario: Go to the Disney Activities page and verify the required elements.
    Given I am ON the "ActivitiesPage"
    And (Optional) I CLICK "surveryModal"
    Then I should EXPECT
      | thingsToDoLink                | visible               |
      | mapButton                     | visible               |
      | pageCarousel                  | visible               |

#  Scenario: Go to Map and verify
#    Given I am ON the "ActivitiesPage"
#    And I CLICK the "mapButton"
#    Then I should be ON "ActivitiesMapPage"
#
#  Scenario: Verify the maps page
#    Given I am ON the "ActivitiesMapPage"
#    Then I should EXPECT
#      | header                        | visible                            |
#      | header                        | Explore Walt Disney World Resort   |
#      | mapContainer                  | visible                            |
#
#
#  Scenario: Go back to the list view
#    Given I am ON the "ActivitiesMapPage"
#    And I CLICK the "listButton"
#    Then I should be ON "ActivitiesPage"

  Scenario: Now verify that first four carousel links
    Given I am ON the "ActivitiesPage"
    Then I should EXPECT
      | pageCarouselWhatsNew                  | What's New                    |
      | pageCarouselDisneyPrincesses          | Disney Princesses             |
      | pageCarouselSpecialEvents             | Special Events                |
      | pageCarouselCharacterDining           | Character Dining              |

  Scenario: Go to page 2 of the Carousel
    Given I am On the "ActivitiesPage"
    And I CLICK "carouselPageTwo"
    And I WAIT 4 seconds

  Scenario: Verify page two carousel links
    Given I am ON the "ActivitiesPage"
    Then I should EXPECT
      | pageCarouselSpecialExperiences        | Special Experiences           |
      | pageCarouselFireworksParades          | Fireworks/Parades             |
      | pageCarouselCharacterGreetings        | Character Greetings           |
      | pageCarouselDiningEvents              | Dining Events                 |

  Scenario: Go to the fireworks page
    Given I am ON the "ActivitiesPage"
    And I CLICK "pageCarouselFireworksParades"
    Then I should ne ON "EntertainmentPage"
