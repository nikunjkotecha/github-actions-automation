<?php

namespace Drupal;

use Drupal\DrupalExtension\Context\RawDrupalContext;

/**
 * FeatureContext class defines custom step definitions for Behat.
 */
class FeatureContext extends RawDrupalContext {

  /**
   * Every scenario gets its own context instance.
   *
   * You can also pass arbitrary arguments to the
   * context constructor through behat.yml.
   */
  public function __construct() {

  }

  /**
   * Wait for page to load for 15 seconds.
   *
   * @Given /^I wait for the page to load$/
   */
  public function iWaitForThePageToLoad() {
    $this->getSession()->wait(3600000, "document.readyState === 'complete'");
  }

  /**
   * @When /^I click on "([^"]*)" element$/
   */
  public function iClickOnElement($css_selector) {
    $session = $this->getSession();

    $element = $session->getPage()->find("css", $css_selector);

    if ($element) {
      $element->click();
    }
    else {
      throw new Exception("Element $css_selector not found on " . $session->getCurrentUrl());
    }
  }

}
