Dado("procuro um funcionario ja cadastrado") do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin', :match => :first)
end

Quando("altero o campo desejado") do
  click_link('PIM', :match => :first)
  click_link('menu_pim_viewEmployeeList', :match => :first)
  fill_in('empsearch_employee_name_empName', :with => 'Luanna Marjory Lamim')
  click_button('searchBtn', :match => :first)
  click_link('/index.php/pim/viewEmployee/empNumber/12', :match => :first)
  binding.pry
  click_button('btnSave', :match => :first)
  fill_in('personal_txtLicenNo', :with => '12345')
  fill_in('personal_txtLicExpDate', :with => '2019-01-19')
  click_button('btnSave', :match => :first)
  end

Então("realizo alteração de dados do funcionario") do
  assert_text('Successfully Saved')
end
