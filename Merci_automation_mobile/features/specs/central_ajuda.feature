#language: pt


Funcionalidade: Central de ajuda


Cenario: Exibição dos tópicos de ajuda
Dado que o usuário realize o login no aplicativo
Quando acessar o menu lateral Central de ajuda
Então deverão ser exibidos tópicos de ajuda


Cenario: Exibição das perguntas
Dado que o usuário realize o login no aplicativo
Quando acessar o primeiro tópico da Central de ajuda
Então deverão ser exibidas as perguntas para o tópico selecionado

Cenario: Exibição das respostas
Dado que o usuário realize o login no aplicativo
Quando acessar o primeiro tópico da Central de ajuda
E acessar a primeira pergunta exibida
Então deverá ser exibida a resposta para a pergunta selecionada


Cenario: Acesso ao Fale Conosco
Dado que o usuário não encontre a resposta que procura na Central de ajuda
Quando clicar em Fale conosco
Então deverá ser direcionado para a funcionalidade Fale conosco