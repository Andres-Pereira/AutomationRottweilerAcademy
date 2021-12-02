
#SCENARIO: Paying a course with bank transaction
#When I insert the data as shown below
Given('I insert the data as shown below') do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
  when "Nombre:"
    fill_in 'billing_first_name', :with => value
  when "Apellidos:"
    fill_in 'billing_last_name', :with => value
  when "Dirección de la calle:"
    fill_in 'billing_address_1', :with => value
  when "Localidad / Ciudad:"
    fill_in 'billing_city', :with => value
  when "Teléfono:"
    fill_in 'billing_phone', :with => value
  when "Dirección de correo:"
    fill_in 'billing_email', :with => value
  end
  end
end

#And select my country and region
Given('select my country and region') do
  find(:xpath, '/html/body/div[1]/div/div/div/div[1]/main/article/div/div/form[2]/div/div[1]/div/div[1]/div/div/p[8]/span/span/span[1]/span').click
  find(:xpath, '/html/body/span/span/span[2]/ul/li[3]').click
end

#And I check the checkbox "He leído y estoy de acuerdo con los términos y condiciones de la web"
When('I check the checkbox {string}') do |string|
    find(:xpath, '/html/body/div[1]/div/div/div/div[1]/main/article/div/div/form[2]/div/div[2]/div/div/div/div/div/p/label/span[1]').click
end

#Then a page with the order details will load
Then('a page with the order details will load') do
  message = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[1]/div[1]/section/ul').text
  confirmation = find(:xpath, '/html/body/div[1]/div/div/div/div/main/article/div/div/div[1]/div[1]/h2').text
  expect(page).to have_content(message)
  expect(page).to have_content(confirmation)
end

#SCENARIO: Paying a course without filling the billing data correctly
#When I insert the data as shown
Given('I insert the data as shown') do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
  when "Nombre:"
    fill_in 'billing_first_name', :with => value
  when "Apellidos:"
    fill_in 'billing_last_name', :with => value
  when "Dirección de la calle:"
    fill_in 'billing_address_1', :with => value
  when "Localidad / Ciudad:"
    fill_in 'billing_city', :with => value
  when "Teléfono:"
    fill_in 'billing_phone', :with => value
  when "Dirección de correo:"
    fill_in 'billing_email', :with => value
  end
  end
end
