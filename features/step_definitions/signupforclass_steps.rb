
#SCENARIO: Sign up to a free course
#Then the course should be added to the list "Mi cursos"
Then('the course should be added to the list {string}') do |string|
  visit 'https://www.r-acad.com/courses/'
  find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/nav/ul/li[2]/a').click
  message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul[2]/li[2]/div/div[2]/h2/a').text
  expect(page).to have_content(message)
end

#SCENARIO: Sign up to a course that costs money
#Then the course should be added to the cart
Then('the course should be added to the cart') do
  visit 'https://www.r-acad.com/carrito/'
  message = find(:xpath, '/html/body/div[1]/div/div/div/div[1]/main/article/div/div/form/table/tbody/tr[1]/td[3]/a').text
  expect(page).to have_content(message)
end
