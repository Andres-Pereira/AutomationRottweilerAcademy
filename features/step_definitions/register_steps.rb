
#Background:
#And I press the button "Registrarse"
Given('I press the call to action button {string}') do |string|
  find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/a[2]').click
end

#SCENARIO: Correct register
Given(/^I enter the fields as shown below$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
  when "Email:"
    fill_in 'signup_email', :with => value
  when "Password:"
    fill_in 'signup_password', :with => value
  when "Confirm:"
    fill_in 'signup_password_confirm', :with => value
  when "Name:"
    fill_in 'field_1', :with => value
  when "Last Name:"
    fill_in 'field_2', :with => value
  when "User Name:"
    fill_in 'field_3', :with => value
  end
  end
end

When('I press {string}') do |string|
  click_on ('signup_submit')
  sleep 2
end

Then('a page will load with the message {string}') do |string|
  message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div/aside/p').text
  puts message
  expect(page).to have_content(message)
end

Then('an email will be sent') do
  #to-do
end
