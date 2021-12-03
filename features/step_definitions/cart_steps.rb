
#SCENARIO: Sign up to a course that costs money
#Then the course should be added to the cart
Then('the course should be added to the cart') do
  visit 'https://www.r-acad.com/carrito/'
  message = find(:xpath, '/html/body/div[1]/div/div/div/div[1]/main/article/div/div/form/table/tbody/tr[1]/td[3]/a').text
  expect(page).to have_content(message)
end

#SCENARIO: Remove an item from the cart
#Given I have the item "Curso completo de Photoshop desde Cero" added to my cart
Given('I have the item {string} added to my cart') do |string|
    find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/a/span/i').click
    message = find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/section/div/ul/li/a[2]').text
    expect(page).to have_content(message)
end

#SCENARIO: View my empty shopping cart
#Then we should see the empty cart message
Then(/^we should see the empty cart message "([^"]*)"$/) do |emptyCart|
  case emptyCart
  when "No hay productos en el carrito."
    message = find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/section/div/p').text
    expect(page).to have_content(message)
  when "Tu carrito está vacío"
    message = find(:xpath, '/html/body/div[1]/div/div/div/div[1]/main/article/div/div/div/p').text
    expect(page).to have_content(message)
  end
end
