
#SCENARIO: Access to a course in wich I'm not subscribed
#Then the content access should be locked with the message "Actualmente no tienes acceso a este contenido"
Then('the content access should be locked with the message {string}') do |string|
  message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/div/div[2]/div[1]/div[2]/div[2]/div[2]').hover.text
  expect(page).to have_content(message)
end

#SCENARIO: Access to a course content in wich I am subscribed
#I am subscribed to the course "Curso básico de Robótica con Arduino"
Given(/^I am subscribed to the course "([^"]*)"$/) do |course|
  find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/nav/ul/li[2]/a').click
  case course
  when "Curso básico de Robótica con Arduino"
    message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul[2]/li[2]/div/div[2]/h2/a').text
    expect(page).to have_content(message)
  end
  visit 'https://www.r-acad.com/courses/'
end

#And press the course content "Introduccion a arduino"
When('press the course content {string}') do |string|
  find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/div/div[2]/div[1]/div[3]/div[2]/div[2]/div/a/div[2]/span').click
end

#Then the first video from the course will be shown
Then('the first video from the course will be shown') do
  message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div/div/div[2]/div/div/div[2]/div[1]/div/div').text
  puts message
  expect(page).to have_content(message)
end
