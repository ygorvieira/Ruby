# Biblioteca de Mídias

Este projeto é uma aplicação Ruby criada com base no livro **Ruby - Aprenda a Programar na Linguagem mais Divertida** da editora **Casa do Código**. Ele gerencia uma biblioteca de mídias, como livros, filmes, CDs e DVDs. A aplicação utiliza serialização YAML para persistir dados e inclui funcionalidades para filtrar mídias por categoria e formatar valores monetários.

## Estrutura do Projeto

### Diretórios e Arquivos Principais

- **`lib/banco_de_arquivos.rb`**  
  Gerencia a persistência de dados, salvando e carregando objetos em arquivos YAML (`midias.yml`).

- **`lib/biblioteca.rb`**  
  Define a classe `Biblioteca`, que organiza e manipula as mídias. Inclui métodos para adicionar mídias, filtrar por categoria e iterar sobre a coleção.

- **`lib/midia.rb`**  
  Define a classe base `Midia`, que representa uma mídia genérica com atributos como título, valor, desconto e categoria.

- **`lib/livro.rb`**  
  Define a classe `Livro`, que herda de `Midia` e adiciona atributos específicos, como autor, ISBN e número de páginas.

- **`lib/cd.rb`**  
  Define a classe `CD`, que herda de `Midia` e representa CDs com atributos específicos.

- **`lib/dvd.rb`**  
  Define a classe `DVD`, que herda de `Midia` e representa DVDs com atributos específicos.

- **`lib/formatador_moeda.rb`**  
  Um módulo que adiciona métodos para formatar valores monetários, incluindo a conversão para o formato brasileiro (ex.: `R$ 100,00`) e a escrita por extenso (ex.: "cem reais").

- **`test/`**  
  Contém os arquivos de teste para as classes e funcionalidades do projeto, utilizando o framework RSpec.

## Funcionalidades

### Biblioteca

- **Adicionar Mídias**  
  Permite adicionar objetos de mídia à biblioteca, salvando-os automaticamente no arquivo YAML.

- **Filtrar por Categoria**  
  O método `midias_por_categoria(categoria)` retorna uma lista de mídias que pertencem à categoria especificada.

- **Iteração**  
  A classe `Biblioteca` inclui o módulo `Enumerable`, permitindo iterar sobre as mídias com métodos como `each`, `map`, etc.

### Mídias

- **Livros**  
  Representados pela classe `Livro`, com atributos como título, autor, ISBN, número de páginas, valor e categoria.

- **CDs**  
  Representados pela classe `CD`, com atributos como título, valor e categoria.

- **DVDs**  
  Representados pela classe `DVD`, com atributos como título, valor e categoria.

### Formatador de Moeda

O módulo `FormatadorMoeda` adiciona métodos para formatar valores monetários:

- **`formata_moeda`**  
  Cria métodos dinâmicos para formatar valores como moeda brasileira (ex.: `R$ 100,00`).

- **`por_extenso`**  
  Converte valores numéricos para texto por extenso em reais (ex.: "cem reais").

## Dependências

Este projeto utiliza as seguintes gems:

- **`yaml`**  
  Para serialização e desserialização de objetos.

- **`brnumeros`**  
  Para converter números em texto por extenso no formato brasileiro.

Certifique-se de instalar as dependências com o Bundler:

```bash
bundle install
```

