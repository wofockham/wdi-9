Given(/^I am on the sign up page$/) do
  visit '/users/sign_up'
end

When(/^I sign up as a user with email "(.*?)"$/) do |email|
  fill_in 'Email', :with => email
  fill_in 'Password', :with => 'password'
  fill_in 'Password confirmation', :with => 'password'
  click_button 'Sign up'
end

Then(/^I should have an account$/) do
  assert_equal 1, User.count
end

Given(/^I am on the login page$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I have already registered as "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I login with valid information$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end