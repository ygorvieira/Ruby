class Midia
  attr_accessor :valor
  attr_reader :titulo, :desconto, :categoria

  VALOR_PADRAO = 10.0
  DESCONTO_PADRAO = 0.1

  # Inicializa uma nova mídia
  # @param titulo [String] o título da mídia
  # @param valor [Float] o preço da mídia
  # @param desconto [Float] o desconto aplicado (entre 0 e 1)
  # @param categoria [String] a categoria da mídia
  def initialize(titulo:, valor: VALOR_PADRAO, desconto: DESCONTO_PADRAO, categoria: nil)
    raise ArgumentError, "Valor deve ser maior que zero" if valor <= 0
    raise ArgumentError, "Desconto deve estar entre 0 e 1" if desconto < 0 || desconto > 1

    @titulo = titulo
    @valor = valor
    @desconto = desconto
    @categoria = categoria
  end

  # Retorna o valor da mídia com o desconto aplicado
  # @return [Float] o valor com desconto
  def valor_com_desconto
    @valor * (1 - @desconto)
  end
end