
#SCENARIO: Access to a course in wich I'm not subscribed
#When I click on the paid course "Adobe illustrator"
When('I click on the paid course {string}') do |string|
  find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul/li[1]/div/div[2]/h2/a').click
end

#Then the content access should be locked with the message "Actualmente no tienes acceso a este contenido"
Then('the content access should be locked with the message {string}') do |string|
  message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/div/div[2]/div[1]/div[2]/div[2]/div[2]').hover.text
  expect(page).to have_content(message)
  #No se pudo implementar
end

#SCENARIO: Access to a course content in wich I am subscribed
#And select the course
When('select the course') do
find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul[2]/li[2]/div/div[2]/h2/a').click
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
