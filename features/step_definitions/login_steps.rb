
#Background:
#Given that I am in the homepage
Given('that I am in the home page') do
  visit 'https://www.r-acad.com/'
end

Given('I press the {string} button') do |string|
  find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/a[1]').click
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

#When I press the button "Acceder"
When('I press the button {string}') do |string|
  click_on ('wp-submit')
end

# SCENARIO: Login successfully
Given('I put the user {string}') do |string|
  fill_in 'user_login', with: 'diegoucb'
end

Given('I put the password {string}') do |string|
  fill_in 'user_pass', with: 'diego1.hola'
end

Then('the Rottweiler Academy homepage will load with my account logged.') do
  page.has_xpath?('/html/body')
  #expect(page).to have_xpath?('/html/body')
  #expect(page).to have_content("home-page bp-nouveau home page-template-default page page-id-1024 logged-in theme-buddyboss-theme woocommerce-js tribe-js buddyboss-theme bb-buddypanel bb-custom-typo sticky-header bp-search elementor-default elementor-kit-99 elementor-page elementor-page-1024 learndash-theme js bb-page-loaded lms-side-panel-close e--ua-blink e--ua-chrome e--ua-webkit")
  sleep 1
end
