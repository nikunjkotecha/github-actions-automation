@example @javascript
Feature: Contact
  In order to verify that web drivers are working
  As a user
  I should be able to load and check the contact page errors.
  With Javascript

  Scenario: Load a page with Javascript
    Given I am on "/contact"
    And I wait for the page to load
    When I click on "#edit-submit" element
    Then I should see an "#edit-name-error" element
    Then I should see an "#edit-mail-error" element
    Then I should see an "#edit-subject-error" element
    Then I should see an "#edit-message-error" element
