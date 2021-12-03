# Generic for errors
#Then the error is thrown: <error>
Then(/^the error is thrown: "([^"]*)"$/) do |error|
puts error
expect(page).to have_content(error)
end

# Generic for buttons
#When I press the button "Acceder"
When(/^I press the button "([^"]*)"$/) do |buttonName|
  case buttonName
  when "Acceder"
    click_on ('wp-submit')
  when "Iniciar sesion"
    find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/a[1]').click
  when "Registrarse"
    find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/a[2]').click
  when "Crear una cuenta"
    click_on ('signup_submit')
  when "Cart"
    find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/a/span/i').click
  when "Finalizar compra"
    find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/section/div/p[2]/a[2]').click
  when "Realizar el pedido"
    click_on ('place_order')
  when "Ver carrito"
      find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/section/div/p[2]/a[1]').click
  when "X"
    find(:xpath, '/html/body/div[1]/div/div/div/div[1]/main/article/div/div/form/table/tbody/tr[1]/td[1]/a').click
  when "Cursos"
    find(:xpath, '/html/body/div[1]/header/div[1]/nav/div/ul/li[2]/a').click
  when "Apuntarme"
    click_on ('btn-join')
  when "Añadir al carrito"
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/div[2]/div[2]/form/button').click
  when "Mi cursos"
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/nav/ul/li[2]/a').click
  end
end

# Generic for courses
#When I press the button "Acceder"
Given(/^I press on the course "([^"]*)"$/) do |course|
  case course
  when "Curso básico de Robótica con Arduino"
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul/li[5]/div/div[2]/h2/a').click
  when "Curso completo de Photoshop desde Cero"
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul/li[6]/div/div[2]/h2/a').click
  when "Adobe illustrator"
    find(:xpath, '/html/body/div[1]/div/div/div/div/main/div/form/div[3]/div/ul/li[1]/div/div[2]/h2/a').click
  end
end
