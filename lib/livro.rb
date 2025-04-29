# Representa um livro com título, autor, ISBN, número de páginas, valor e categoria.
# Herda da classe `Midia` e adiciona atributos específicos de um livro.
class Livro < Midia
  # Atributos de leitura
  # @return [String] o autor do livro
  attr_reader :autor
  # @return [String] o ISBN do livro
  attr_reader :isbn
  # @return [Integer] o número de páginas do livro
  attr_reader :numero_de_paginas

  # Inicializa um novo livro com os atributos fornecidos.
  #
  # @param titulo [String] o título do livro
  # @param autor [String] o autor do livro
  # @param isbn [String] o ISBN do livro (padrão: "1")
  # @param numero_de_paginas [Integer] o número de páginas do livro
  # @param valor [Float] o preço do livro
  # @param categoria [String] a categoria do livro
  # @param desconto [Float] o desconto aplicado ao livro (padrão: DESCONTO_PADRAO)
  # @raise [ArgumentError] se `numero_de_paginas` ou `valor` forem inválidos
  def initialize(titulo:, autor:, isbn: "1", numero_de_paginas:, valor:, categoria:, desconto: DESCONTO_PADRAO)
    super(titulo: titulo, valor: valor, desconto: desconto, categoria: categoria)
    @autor = autor
    @isbn = isbn
    @numero_de_paginas = numero_de_paginas
  end
end