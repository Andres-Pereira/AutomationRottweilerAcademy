#Then the account should log-out
Then('the account should log-out') do
  message = find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/a[1]').text
  expect(page).to have_content(message)
end
