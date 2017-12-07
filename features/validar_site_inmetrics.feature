#language: pt
#utf-8

Funcionalidade: Validar Site Inmetrics
Eu como usuario desejo entrar no site da Inmetrics
Quero encontrar a mensagem "mais de 15 anos de atuação"
Para validar o texto na pagina quem somos

@validar
Cenario: Validar Site Inmetrics 
Dado que estou na home do site 
Quando clicar na aba quem somos 
Então apresentara a mensagem "Mais de 15 anos de atuação"

