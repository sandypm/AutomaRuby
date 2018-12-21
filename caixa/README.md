

# Começando o projeto do Caixa Eletrônico

### Data da entrega = 13/10
### Como entregar ==> instrutor@ninjahouse.com.br com assunto: aZERO Caixa - 1809

# Criando o projeto base

* criar a pasta caixa
* Acessar a pasta caixa

*  gem install bundle (vai instalar a bundle - Gerenciador de pacotes do Ruby)
* bundle init (Inicializa um projeto Ruby com arquivo de dependência Gemfile)
* Limpar o Gemfile
* Incluir as Gems Cucumber e RSpec no Gemfile
* Instalar as Gems com o comando: bundle install
* Conferir se foram corretamente instalados (cucumber e rspec) - 'cucumber --version' 'rspec --version'

# Criando o projeto de especificação com Cucumber

* na pasta caixa, execute o comando: 'cucumber --init' - cria-se uma estrutura do cucumber
* O comando acima criou a pasta features
* copiar o arquivo saque.feature para a pasta features
* executar o cucumber e implementar a automação e a funcionalidade

# Criando o repositório da src

* na pasta caixa, execute o comando: 'mkdir src' - cria-se o diretório src

# Na pasta feature tem a documentação do projeto caixa
# Na pasta src tem o código fonte do projeto caixa

* Na pasta features escrever uma história de usuário com quatro cenários:
* 'Saque', 'Cliente sem saldo', 'Saldo insuficiente' e 'Limite por saque'
* executar comando que lista linguagens que o cucumber entende: cucumber --i18n-languages
* executar comando que lista palavras reservadas em portugues do cucumber: cucumber --i18n-keywords pt
* para o cucumber entender português, a 1a. linha do seu código tem que ser'#language:pt'
* executar o comando: cucumber - irá executar o BDD e o transformará em métodos conforme copiado abaixo

# Executando o comando cucumber ele agora entende o português e cria os métodos conforme abaixo:
# O cucumber aponta 4 cenários a serem AUTOMATIZADOS e 16 STEPS a serem AUTOMATIZADOS

* Dado("que eu tenho uma conta com {int} reais") do |int|
*  pending # Write code here that turns the phrase above into concrete actions
* end

*Quando("faço um saque no valor de {int} reais") do |int|
*  pending # Write code here that turns the phrase above into concrete actions
*end

*Então("{int} reais será meu saldo final") do |int|
*  pending # Write code here that turns the phrase above into concrete actions
*end

*Então("devo ver a mensagem {string}") do |string|
*  pending # Write code here that turns the phrase above into concrete actions
*end

*Então("{int}o reais será meu saldo final") do |int|
*  pending # Write code here that turns the phrase above into concrete actions
*end -->

# Criar uma tag com @happiness (caminho feliz) para o cenário peso ideal no arquivo saque.
* executar o comando: cucumber -t @happiness que vai executar apenas este cenário
* Criar um arquivo na pasta steps.definitions chamado steps.rb
* copiar os steps definitions da execução cucumber no arquivo steps.rb

* substituir os |string| por nomes amigáveis que façam sentido
* observe que o cucumber acusa cenário undefined pois não há código definindo o cenário.
* executando novamente o cenário @happiness o cucumber mudará o status para pending
* agora o cenário será então automatizado
* os métodos recebem variáveis peso, altura e mensagem
* inserir comandos puts peso, altura e mensagem nos pendings do steps.rb
* fazer o cálculo: criar uma classe e variável imc = Imc.new  e método calcula recebendo peso e altura
* se ele calcula peso e altura tem retorno crianr então a variável resultado para receber o retorno
* mensagem vem da feature, peso e altura vem da feature, ou seja, tem um método que recebe peso e altura
* o método calcula precisa receber peso e altura
* ao executar novamente o cucumber, ele dá mensagem ' uninitialized constant Imc (NameError)' 
* não achando a classe Imc, então é necessário apontar onde está o Imc. comando require_relative 
* inserir comando: require_relative no início do arquivo steps.rb para importar a classe imc
* o comando require_relative 'c:\ninjahouse\rb4t\imc\src\imc.rb' é um método relativo de informar
* onde a classe imc está. se usado e este script for rodar em outro lugar, já não vai funcionar. m
* outra estrutura - require_relative '../../src/imc.rb'
* Asvariáveis peso e altura tal como estão, não permanecem para o próximo cenário, então é necessário
* é necessário criá-las de forma permanente até o fim do código 
* @peso = peso e @altura = altura. Desta forma, elas irão permanecer na linha resultado = ....
* método calcula não foi encontrado
* 