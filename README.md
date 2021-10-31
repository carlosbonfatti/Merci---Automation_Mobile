#Framework Dock - Merci  para testes automatizados de Aplicativos Mobile
*Esse projeto entrega, uma estrutura completa para automação para testes Mobile, usando os melhores frameworks e práticas.*

Testes móveis E2E do cliente

O que é? : octocat:
É um pacote de automação para os aplicativos Merci usando Ruby e Appium.

Configurar 🔨
Instale o Ruby a partir daqui . Versão recomendada:> = 3.0.2
Instale o Bundler a partir daqui . Versão recomendada:> = 2.2.4
Instale o Node.js:
use nvm, n, or brew install node
Instale o Appium:
$ npm i -g appium
Instale o Appium Doctor:
$ npm i -g appium-doctor
Instale as dependências:
$ cd path_to_project/
$ bundle install
Requisitos do Android
Instale o Java 
Instale o Android Studio 
Instale o driver Appium UiAutomator2
$ npm install appium-uiautomator2-driver
requisitos iOS
Instalar Homebrew
$ /usr/bin/ruby -e "$(curl -fsSl https://raw.githubusercontent.com/Homebrew/install/master/install)"
Instale o XCode 
Instale carthage:
$ brew install carthage
Verificando todos os pré-requisitos ✔️
Execute o comando Appium Doctor:

$ appium-doctor
Executando testes ▶ ️
Em primeiro lugar, crie o arquivo .env na pasta raiz do projeto.

APP_PATH="<APK/APP path>"
Vá até a pasta raiz do projeto através do Terminal e execute o cucumber comando.

Execução local do Android:

$ cd path/to/project
$ appium
$ cucumber -p android -t @tag ou Cucumber
Execução local iOS:

$ cd path/to/project
$ appium
$ cucumber -p ios_local -t @tag

Relatórios de teste 📄
Instalar Relatório Allure:
$ npm install -g allure-commandline
Execute os testes
Gerar relatório:
$ allure serve reports/allure
Execução do AWS Device Farm
Configure o conjunto de testes Appium seguindo [estas] instruções ( https://docs.aws.amazon.com/pt_br/devicefarm/latest/developerguide/test-types-appium.html#test-types-appium-prepare ) Observação: Comando para agrupar o código-fonte:
$ cd path/to/project
$ zip -r MyTests.zip config features Gemfile vendor Gemfile.lock reports
Acesse o AWS Device Farm e crie uma execução de teste por meio do AWS Device Farm Console seguindo [estas] instruções ( https://docs.aws.amazon.com/pt_br/devicefarm/latest/developerguide/how-to-create-test- run.html # how-to-create-test-run-console ) Observação: use aws_device_farm_sample.yml como exemplo
Autor ✒️
Merci
