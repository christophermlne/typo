Feature: Write Articles
  As a blog administrator
  In order to allow my users to browse my content
  I want to be able to add categories to my articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the dashboard page
    When I click on "Categories"
    And I fill in "Name" with "Awesome Category"
    And I fill in "Keywords" with "awesome, amazing, cool"
    And I fill in "Permalink" with "awesome"
    And I fill in "Description" with "These articles are all awesome!"
    And I press "Save"
    Then I should be on the admin categories page
    And I should see "Awesome Category"
