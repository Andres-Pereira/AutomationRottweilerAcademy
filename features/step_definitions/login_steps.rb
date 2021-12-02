
#Background:
#Given that I am in the homepage
Given('that I am in the home page') do
  visit 'https://www.r-acad.com/'
end

# SCENARIO: Login with wrong credentials
#Given I put the username <user>
Given(/^I put the username "([^"]*)"$/) do |user|
  fill_in 'user_login', with: user
end

#And the password <pass>
Given(/^the password "([^"]*)"$/) do |pass|
  fill_in 'user_pass', with: pass
end

# SCENARIO: Login successfully
Given('I put the user {string}') do |string|
  fill_in 'user_login', with: 'diegoucb'
end

Given('I put the password {string}') do |string|
  fill_in 'user_pass', with: 'diego1.hola'
end

Then('the Rottweiler Academy homepage will load with my account logged.') do
  message = find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[1]/a/span').text
  puts message
  expect(page).to have_content(message)
end
