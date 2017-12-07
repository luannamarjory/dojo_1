Dado(/^que estou na home do site$/) do
  visit "http://www.inmetrics.com.br"
end

Quando(/^clicar na aba quem somos$/) do
  
  click_link('Quem Somos', :match => :first)
end

Então(/^apresentara a mensagem¨"([^"]*)"$/) do |arg1|
  assert_text('experiência e patrimônio intelectual')
end