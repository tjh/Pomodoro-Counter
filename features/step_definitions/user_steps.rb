When /^I go through the join process$/ do
  steps %Q{
    When I go to the home page
    And I follow "Join Now"
    And I fill in "frank@testing.com" for "Email"
    And I fill in "masterfrank" for "Password"
    And I fill in "masterfrank" for "Password confirmation"
    And I press "Sign up"
  }
end

Given /^I am logged in$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I change my profile name to "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^there is a user "([^"]*)" with password "([^"]*)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When /^I log in with username "([^"]*)" and password "([^"]*)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
