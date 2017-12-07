Dado("que estou logado no sistema") do
  visit "http://opensource.demo.orangehrmlive.com"
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin', :match => :first)
end

Quando("Preencher os dados do novo funcionario") do
  click_link('PIM', :match => :first)
  click_link('menu_pim_addEmployee', :match => :first)
  fill_in('firstName', :with => 'Luanna')
  fill_in('middleName', :with => 'Marjory')
  fill_in('lastName', :with => 'Lamim')
  click_button('btnSave', :match => :first)
end

Então("realizo cadastro do novo funcionario") do

end
