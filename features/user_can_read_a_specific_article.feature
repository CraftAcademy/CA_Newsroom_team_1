Feature: User can see a specific article

  As a user
  In order to read an article
  I would like to be able to click on an article and have it displayed

  Background:  
    Given the following articles exists
      | title                | lede             | author  | date        | 
      | A breaking news item | blah blah blah   | William | 2012/12/12  | 
      | Learn Rails 5        | blah blah blah   | Camron  | 2013/11/11  |

   Scenario: Campaign details
        When I visit the site
        And I click 'A breaking news item' 
        Then I should see 'William'
        And I should see '2012-12-12'
        When I click 'back'
        And I click 'Learn Rails 5' 
        Then I should see 'Camron'
        And I should see '2013-11-11'