@example @javascript
Feature: Contact
  In order to verify that web drivers are working
  As a user
  I should be able to load and check the contact page errors.
  With Javascript

  Scenario: Load a page with Javascript
    Given I am on "/contact"
    And I wait for the page to load
    When I click on "#contact-message-feedback-form #edit-submit" element
    Then I should see an "#contact-message-feedback-form #edit-name-error" element
    Then I should see an "#contact-message-feedback-form #edit-mail-error" element
    Then I should see an "#contact-message-feedback-form #edit-subject-0-value-error" element
    Then I should see an "#contact-message-feedback-form #edit-message-0-value-error" element
