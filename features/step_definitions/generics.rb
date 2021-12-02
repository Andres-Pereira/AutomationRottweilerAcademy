#Then the error is thrown: <error>
Then(/^the error is thrown: "([^"]*)"$/) do |error|
puts error
expect(page).to have_content(error)
end
