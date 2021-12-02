
#Background
#Valid credentials for login
Given('I insert valid credentials') do
  fill_in 'user_login', with: 'diegoucb'
  fill_in 'user_pass', with: 'diego1.hola'
end

# Navigate to the Cursos section
Given('I go to the section {string}') do |string|
  find(:xpath, '/html/body/div[1]/header/div[1]/nav/div/ul/li[2]/a').click

end

#SCENARIO: Sign up to a free course
#I press on the course "Curso básico de Robótica con Arduino"
Given('I press on the course {string}') do |string|
  find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul/li[5]/div/div[2]/h2/a').click
end

#I click on 'Apuntarme'
When('I click on {string}') do |string|
  click_on ('btn-join')
end

#the course should be added to the list "Mi cursos"
Then('the course should be added to the list {string}') do |string|
  visit 'https://www.r-acad.com/courses/'
  find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/nav/ul/li[2]/a').click
  message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul[2]/li[2]/div/div[2]/h2/a').text
  expect(page).to have_content(message)
end

#SCENARIO: See the courses that I am subscribed
#I am subscribed to the course "Curso básico de Robótica con Arduino"
Given('I am subscribed to the course {string}') do |string|
  #se anadio en el anterior scenario
end

#When I press the tab "Mi cursos"
When('I press the tab {string}') do |string|
  find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/nav/ul/li[2]/a').click
end

#Then the course "Curso básico de Robótica con Arduino" should appear in my courses list
Then('the course {string} should appear in my courses list') do |string|
  message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul[2]/li[2]/div/div[2]').text
  expect(page).to have_content(message)
end

#SCENARIO: Sign up to a course that costs money
#Given I press on the paid course "Curso completo de Photoshop desde Cero"
Given('I press on the paid course {string}') do |string|
  find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul/li[6]/div/div[2]/h2/a').click
end

#And I press the option 'Añadir al carrito'
Given('I press the option {string}') do |string|
  find(:xpath, '/html/body/div[1]/div/div/div/div/main/div[2]/div[2]/form/button').click
end

#Then the course should be added to the cart
Then('the course should be added to the cart') do
  visit 'https://www.r-acad.com/carrito/'
  message = find(:xpath, '/html/body/div[1]/div/div/div/div[1]/main/article/div/div/form/table/tbody/tr[1]/td[3]/a').text
  expect(page).to have_content(message)
end
