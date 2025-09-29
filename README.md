# README

# O APP MyRottenPotatoes utiliza Ruby e Rails para implementar um aplicativo que permite cadastro de filmes com os dados Título, Classificação Indicativa, Data de Lançamento e Descrição
# permitindo as operações básicas CRUD e implementando os 7 métodos RESTful no controlador.

# O aplicativo permite: 
- ✅ Listar todos os filmes cadastrados
- ✅ Adicionar novos filmes ao catálogo
- ✅ Visualizar detalhes de cada filme
- ✅ Editar informações de filmes existentes
- ✅ Excluir filmes do catálogo
- ✅ Ordenar filmes por título ou data de lançamento (clicando nos cabeçalhos)

# Para executar o programa, primeiro é necessário realizar a instalação do Ruby e também do Rails, disponível em: https://guides.rubyonrails.org/getting_started.html

# Depois, podemos clonar o repositório: 
git clone https://github.com/avlis-mat/myrottenpotatoes.git
cd myrottenpotatoes

# Instalar as dependências com: 
bundle install

# Criar o banco de dados
bin/rails db:create

# Executar as migrations
bin/rails db:migrate

# Popular com dados iniciais
bin/rails db:seed

# iniciar o servidor
bin/rails server

# acessar o app local utilizando navegador
http://localhost:3000/movies
