
#Background:
#Given that I am in the homepage
Given('that I am in the home page') do
  visit 'https://www.r-acad.com/'
end

# SCENARIO: Login with wrong credentials
#Given I put the <username>
Given(/^I put the "([^"]*)"$/) do |username|
  fill_in 'user_login', with: username
end

#And the <password>
Given(/^the "([^"]*)"$/) do |password|
  fill_in 'user_pass', with: password
end

# SCENARIO: Login successfully
#Given I put my user name
Given('I put my user name') do
  fill_in 'user_login', :with => ENV['user']
end

#And I put my password
Given('I put my password') do
  fill_in 'user_pass', :with => ENV['pass']
end

#Then the Rottweiler Academy homepage will load with my account logged.
Then('the Rottweiler Academy homepage will load with my account logged.') do
  message = find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[1]/a/span').text
  puts message
  expect(page).to have_content(message)
end
