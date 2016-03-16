#########################################################
# Feature File
# SikuliX, JRuby, Cucumber on Windows
# Written by Richard Foster
#########################################################

Feature: Open Chrome Browser and goto www.google.co.uk (original I know!)

Scenario: Verify the presence of search button on Google
    Given I doubleclick on "chrome_desktop_icon.png"
    When I click on "chrome_url_textfield.png"
    And I type "www.google.co.uk"
    And I hit ENTER
    Then I should see "google_search_button.png"