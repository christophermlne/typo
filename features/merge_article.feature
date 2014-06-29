Feature: Merge Articles
  As a blog administrator
  In order to avoid articles with duplicate content
  I want to be able to merge articles with similar content

Background:
  Given the blog is set up
  And I am logged into the admin panel
  And the following articles exist
  | Title                             | Author              | Body              |
  | What you need to know about HTML5 | Johny Texty         | Html5 is cool.    |
  | Cool HTML5 features               | Alicia Likestowrite | HTML5 is awesome. |

Scenario:
  And I am on the edit page for "What you need to know about HTML5"
  When I fill in "merge_with" with "ID"
  And I press "Merge"
  Then I should see "Html5 is cool."
  And I should see "HTML5 is awesome."
  And I should see "What you need to know about HTML5"
  And I should not see "HTML5 features"
  #TODO merge comments? maybe in separate feature