Feature: User can see the details of a specific article 

  As a user
  In order to read an article
  I would like to be able to click on an article and have it displayed

  Background:  
    Given the following articles exists
      | title                | body             | author  | created_at  | 
      | A breaking news item | blah blah blah   | William | 2012/12/12  | 
      | Learn Rails 5        | blah blah again  | Camron  | 2013/11/11  |

   Scenario: User can see the details of a specific article 
      When I visit the site
      And I click 'A breaking news item' 
      Then I should see 'William'
      And I should see 'blah blah blah'
      And I should see '2012-12-12'
      Then I click 'back'
      And I click 'Learn Rails 5'
      And I should see 'blah blah again' 
      And I should see 'Camron'
      And I should see '2013-11-11'