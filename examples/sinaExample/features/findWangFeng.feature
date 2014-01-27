Feature: Go to the Sina.com.cn and find WangFeng's weibo

  Background: sina.com settings
    Given the following settings:
      | url              | http://www.sina.com.cn  	|
      | platform         | Vista                  	|
      | browser          | chrome                 	|
      | browser version  | 26                     	|


  Scenario: Verify that we are in sina.com.cn
    Given I am ON "HomePage"
    Then I should EXPECT
      | sinaLogo              |         visible      |
      | firstLink             |         新闻      		 |
      
      
  Scenario: Search 汪峰
    Given I am ON "HomePage" 
    And I enter
      | searchField       |  汪峰 	 | 
    And I click "searchButton"   
    And I wait 5 seconds

  Scenario: Go to WeiboPage and verify  first result showed  汪峰 
    Given I am ON "WeiboPage"
    Then I should EXPECT
      | firstResult                |汪峰          				|
