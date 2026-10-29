#Church Library (Sistema de Gerenciamento de Livraria)

Aplicação web desenvolvida em Ruby on Rails para gerenciar o acervo, o controle de estoque e o histórico de empréstimos de livros de uma biblioteca comunitária/igreja. O sistema visa facilitar a organização dos exemplares disponíveis e o acompanhamento dos empréstimos realizados aos membros.


##Funcionalidades
- Cadastro, edição e listagem de livros.
- Controle de disponibilidade e status dos exemplares (emprestado ou disponível).
- Interface limpa e responsiva.


##Tecnologias Utilizadas
- **Ruby:** (consulte o arquivo `.ruby-version` para a versão exata)
- **Ruby on Rails**
- **Banco de Dados:** PostgreSQL
- **Estilização:** Bootstrap / CSS


##Como Rodar o Projeto Localmente

Para executar a aplicação na sua máquina, abra o terminal e execute os comandos abaixo em sequência:

git clone [https://github.com/PabloSHenrique/church_library.git](https://github.com/PabloSHenrique/church_library.git)
cd church_library
bundle install
rails db:create
rails db:migrate
Depois disso, basta acessar no seu navegador: http://localhost:3000

##👩‍💻 Autor
Desenvolvido por Pablo Henrique.
rails server

