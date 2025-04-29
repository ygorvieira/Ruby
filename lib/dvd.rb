# Representa um DVD com título, valor e categoria.
require_relative 'midia'
require_relative 'formatador_moeda'

class DVD < Midia
  attr_reader :desconto

  include FormatadorMoeda

  # Formata os valores monetários
  formata_moeda :valor_com_desconto, :valor

  VALOR_PADRAO = 10.0
  CATEGORIA_PADRAO = "Geral"
  DESCONTO_PADRAO = 0.1

  # Inicializa um novo DVD com os atributos fornecidos.
  #
  # @param titulo [String] o título do DVD
  # @param valor [Float] o preço do DVD
  # @param categoria [String] a categoria do DVD
  def initialize(titulo:, valor:, categoria:)
    super(titulo: titulo, valor: valor, desconto: DESCONTO_PADRAO, categoria: categoria)
  end
end