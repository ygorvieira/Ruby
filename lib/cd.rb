# Representa um CD com título, valor, categoria e desconto.
require_relative 'midia'

class CD < Midia
  attr_reader :desconto

  DESCONTO_PADRAO = 0.3

  # Inicializa um novo CD com os atributos fornecidos.
  #
  # @param titulo [String] o título do CD
  # @param valor [Float] o preço do CD
  # @param categoria [String] a categoria do CD
  def initialize(titulo:, valor:, categoria:)
    super(titulo: titulo, valor: valor, desconto: DESCONTO_PADRAO, categoria: categoria)
  end
end