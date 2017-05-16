# Projeta_Test

Getting Started
===============

# Cucumber/Capybara

In the activity 1 was used Cucumber, Capybara, Page-Object, Site_Prism, RSpec
and Webdrivers.

Note: The Page-Object and Site_Prism libraries were used to keep the project
more organized and structured. The RSpec library was used to validate the
expectations.

1 -	Automação Frontend

Nessa questão, utilize Cucumber e Capybara.
Na página https://the-internet.herokuapp.com/login, os usuários fazem login com
sucesso preenchendo os campos Username e Password.

Execute os passos a seguir:
-	Preencher o campo Username com o valor “tomsmith”;
-	Preencher o campo Password com o valor “SuperSecretPassword!”;
-	Clicar no botão Login;
-	Validar a mensagem “You logged into a secure área!”na tela;
-	Clicar no botão Logout;
-	Validar a mensagem “You logged out of the secure área!’ na tela.

Username e Password devem ser passados via linha de comando, NÃO deixa-los
hardcoded no projeto.
Crie ao menos um cenário que represente esse comportamento do usuário e faça a
automação do mesmo.


------------------------------------------------------------------------------

# Cucumber/HTTParty

In the activity 2 was used Cucumber, HTTParty and RSpec.

Note: The RSpec library was used to validate the expectations.

2	- Automação Backend

Nessa questão, utilize Cucumber e HTTParty.

Os correios possuem uma API pública que retorna os detalhes de um endereço dado
um determinado CEP. Essa API é usada por diversos sistemas para preenchimento
de endereço, evitando que o usuário precise digitar todos os seus dados, pois
os sistemas auto completam os dados baseado apenas no CEP fornecido.
Os dados da API são:

-	URL: http://correiosapi.apphb.com/cep/$CEP (substitua $CEP pelo CEP que
  desejar validar)

  Método: GET
-	Exemplo:
Request: GET -  http://correiosapi.apphb.com/cep/13040089
Response:
{
  "cep": "13040089",
  "tipoDeLogradouro": "Rua",
  "logradouro": "Manoel Sylvestre de Freitas Filho",
  "bairro": "Jardim Nova Europa",
  "cidade": "Campinas",
  "estado": "SP"
}

Implemente cenários que representem o uso dessa API e faça a automação dos
mesmos, contemplando ao menos:

-	O uso da API com um CEP válido;
-	O uso da API com CEP inválido.

É importante validar a API através de cada campo do JSON de resposta e de seu
response code.

-------------------------------------------------------------------------------

### Installation

* Install Ruby 2.3.0 from https://rubyinstaller.org/downloads/
* Install `.Ruby >= 2.3.0`
* Install `Phantomjs >= 2.1.1`
* Install `Firefox` only `47` version
* Install `Chrome` and `chromedriver` any version
* Install `Bundler`
```
gem install bundler
```
* Install latest `Gems`
```
bundle install (Gemfile included)
```

* Download the geckodriver, chromedriver and phantomjs. Keep them within a
desired folder and set this folder path on the environment variables.

* Open a command console (e.g. cmder or cmd). Execute the command line below:

* git clone https://github.com/jcarboni2/Projeta_test.git

* Access the folder of downloaded project

* To perform the first activity, execute the command line setting the
desired configuration as described bellow in the "Notes:"

Command line:

cucumber "browser" USERNAME=tomsmith PASSWORD=SuperSecretPassword! --tag "tag"

Notes:
  Change "browser" for chrome=true or firefox=true or headless=true
  Change "tag"
    For feature as @login
    For scenario as @valid_login or @invalid_login


* To perform the second activity, execute the command line setting the
desired configuration as described bellow in the "Notes:"

Command line:

cucumber --tag "tag"

Notes:
Change "tag"
  For feature as @search_cep
  For scenario as @valid_cep or @invalid_cep
