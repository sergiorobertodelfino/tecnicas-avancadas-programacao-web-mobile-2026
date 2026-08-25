# Lista de Exercícios — Flutter: Validação Manual

Esta lista de exercícios é de realização **individual**.

Todos os exercícios devem ser desenvolvidos utilizando os conceitos apresentados em aula.

Após concluir os exercícios, o aluno deverá **compactar todo o projeto Flutter em um arquivo `.zip`** e realizar a entrega do arquivo compactado no local indicado pelo professor.

Todos os exercícios deverão estar presentes no mesmo projeto Flutter.

## Orientações

Utilize, quando necessário:

- `StatefulWidget`;
- `TextEditingController`;
- `dispose()`;
- `TextField`;
- `trim()`;
- estruturas condicionais (`if`);
- `RegExp`;
- `int.tryParse()`;
- `double.tryParse()`;
- `setState()`;
- mensagens de erro e sucesso.

**Não utilize `Form`, `TextFormField` ou `validator`.**

Em todos os exercícios, ao clicar no botão **Salvar**, os campos devem ser validados. Caso alguma regra não seja atendida, uma mensagem adequada deve ser exibida ao usuário. Caso todas as validações sejam atendidas, deve ser exibida a mensagem de sucesso indicada no exercício.

---

## Exercício 1 — Cadastro de Veículo

Crie uma tela para cadastrar um veículo contendo os seguintes campos:

- Marca;
- Modelo;
- Ano;
- Preço.

Faça as seguintes validações:

### Marca

- Campo obrigatório;
- Deve possuir entre 2 e 50 caracteres.

### Modelo

- Campo obrigatório;
- Deve possuir entre 2 e 50 caracteres.

### Ano

- Campo obrigatório;
- Deve ser um número inteiro;
- Deve estar entre 1900 e 2026.

### Preço

- Campo obrigatório;
- Deve aceitar valores decimais utilizando ponto ou vírgula;
- Deve possuir no máximo duas casas decimais;
- Deve estar entre R$ 1.000,00 e R$ 1.000.000,00.

Caso todos os dados estejam corretos, exiba:

`Veículo salvo com sucesso`

---

## Exercício 2 — Cadastro de Filme

Crie uma tela para cadastro de um filme contendo os seguintes campos:

- Nome do filme;
- Data de lançamento;
- Duração em minutos.

Faça as seguintes validações:

### Nome do filme

- Campo obrigatório;
- Deve possuir entre 2 e 100 caracteres.

### Data de lançamento

- Campo obrigatório;
- Deve estar no formato `dd/mm/aaaa`.

Exemplos válidos:

`15/08/2020`  
`01/01/1995`

Exemplos inválidos:

`15-08-2020`  
`2020/08/15`  
`1/1/2020`

Utilize uma expressão regular para verificar se a data foi informada no formato correto.

### Duração

- Campo obrigatório;
- Deve ser um número inteiro;
- Deve estar entre 1 e 500 minutos.

Caso todos os dados estejam corretos, exiba:

`Filme salvo com sucesso`

---

## Exercício 3 — Cadastro de Aluno

Crie uma tela para cadastro de um aluno contendo os seguintes campos:

- Nome;
- Idade;
- E-mail.

Faça as seguintes validações:

### Nome

- Campo obrigatório;
- Deve possuir entre 3 e 50 caracteres.

### Idade

- Campo obrigatório;
- Deve ser um número inteiro;
- Deve estar entre 10 e 100.

### E-mail

- Campo obrigatório;
- Deve conter o caractere `@`.

Caso todos os dados estejam corretos, exiba:

`Aluno salvo com sucesso`

---

## Exercício 4 — Cadastro de Livro

Crie uma tela para cadastro de livros contendo os seguintes campos:

- Título;
- Autor;
- Número de páginas;
- Código do livro.

Faça as seguintes validações:

### Título

- Campo obrigatório;
- Deve possuir entre 2 e 100 caracteres.

### Autor

- Campo obrigatório;
- Deve possuir entre 3 e 100 caracteres.

### Número de páginas

- Campo obrigatório;
- Deve aceitar apenas números inteiros;
- Deve estar entre 1 e 10.000.

### Código do livro

O código deve seguir o seguinte formato:

`ABC-1234`

Onde:

- As três primeiras posições devem ser letras;
- Em seguida deve existir um hífen;
- As quatro últimas posições devem ser números.

Exemplos válidos:

`ABC-1234`  
`XYZ-0001`

Exemplos inválidos:

`AB-1234`  
`ABC1234`  
`123-ABCD`

Caso todos os dados estejam corretos, exiba:

`Livro salvo com sucesso`

---

## Exercício 5 — Cadastro de Evento

Crie uma tela para cadastrar um evento contendo os seguintes campos:

- Nome do evento;
- Quantidade mínima de participantes;
- Quantidade máxima de participantes;
- Valor do ingresso.

Faça as seguintes validações:

### Nome do evento

- Campo obrigatório;
- Deve possuir entre 5 e 100 caracteres.

### Quantidade mínima de participantes

- Campo obrigatório;
- Deve ser um número inteiro;
- Não pode ser menor que 1.

### Quantidade máxima de participantes

- Campo obrigatório;
- Deve ser um número inteiro;
- Deve estar entre 1 e 50.000;
- Não pode ser menor que a quantidade mínima de participantes.

### Valor do ingresso

- Campo obrigatório;
- Deve aceitar números decimais utilizando vírgula ou ponto;
- Deve possuir no máximo duas casas decimais;
- Deve estar entre R$ 0,00 e R$ 10.000,00.

Caso todos os dados estejam corretos, exiba:

`Evento salvo com sucesso`

---

## Exercício 6 — Cadastro de Usuário

Crie uma tela para cadastro de usuário contendo os seguintes campos:

- Nome;
- E-mail;
- Senha;
- Confirmar senha.

Faça as seguintes validações:

### Nome

- Campo obrigatório;
- Deve possuir entre 3 e 50 caracteres.

### E-mail

- Campo obrigatório;
- Deve conter `@`;
- Deve conter pelo menos um `.` após o `@`.

### Senha

- Campo obrigatório;
- Deve possuir entre 6 e 20 caracteres.

### Confirmar senha

- Campo obrigatório;
- Deve possuir exatamente o mesmo valor informado no campo senha.

Caso as senhas sejam diferentes, exiba uma mensagem adequada.

Caso todos os dados estejam corretos, exiba:

`Usuário cadastrado com sucesso`
