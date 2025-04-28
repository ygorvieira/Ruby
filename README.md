# Biblioteca de Mídias

Este projeto é uma aplicação Ruby criada com base no livro Ruby - Aprenda a Programar na Linguagem mais Divertida da editora Casa do Código, para gerenciar uma biblioteca de mídias, como livros, filmes e outros itens. Ele utiliza serialização YAML para persistir dados e inclui funcionalidades para filtrar mídias por categoria e formatar valores monetários.

## Estrutura do Projeto

### Arquivos Principais

- **`lib/banco_de_arquivos.rb`**  
  Gerencia a persistência de dados, salvando e carregando objetos em um arquivo YAML (`livros.yml`).

- **`lib/biblioteca.rb`**  
  Define a classe `Biblioteca`, que organiza e manipula as mídias. Inclui métodos para adicionar mídias, filtrar por categoria e iterar sobre a coleção.

- **`lib/formatador_moeda.rb`**  
  Um módulo que adiciona métodos para formatar valores monetários, incluindo a conversão para o formato brasileiro (ex.: `R$ 100,00`) e a escrita por extenso (ex.: "cem reais").

## Funcionalidades

### Biblioteca

- **Adicionar Mídias**  
  Permite adicionar objetos de mídia à biblioteca, salvando-os automaticamente no arquivo YAML.

- **Filtrar por Categoria**  
  O método `midias_por_categoria(categoria)` retorna uma lista de mídias que pertencem à categoria especificada.

- **Iteração**  
  A classe `Biblioteca` inclui o módulo `Enumerable`, permitindo iterar sobre as mídias com métodos como `each`, `map`, etc.

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