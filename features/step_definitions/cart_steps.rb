
#SCENARIO: View my empty shopping cart
#Then we should see the message "No hay productos en el carrito."
Then('we should see the message {string}') do |string|
  message = find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/section/div/p').text
  expect(page).to have_content(message)
end

#SCENARIO: Remove an item from the cart
#Given I have the item "Curso completo de Photoshop desde Cero" added to my cart
Given('I have the item {string} added to my cart') do |string|
    find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/a/span/i').click
    message = find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/section/div/ul/li/a[2]').text
    expect(page).to have_content(message)
end

#Then a message "Tu carrito está vacío" will be shown
Then('a message {string} will be shown') do |string|
    message = find(:xpath, '/html/body/div[1]/div/div/div/div[1]/main/article/div/div/div/p').text
    expect(page).to have_content(message)
end
