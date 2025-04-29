# Representa uma revista com título e valor.
# Utiliza o módulo ActiveFile para persistência de dados.
require_relative 'midia'

class Revista < Midia
    include ActiveFile

    field :titulo
    field :valor

    TITULO_PADRAO = "Sem título"
    VALOR_PADRAO = 10.0

    def initialize(titulo: TITULO_PADRAO, valor: VALOR_PADRAO)
        raise ArgumentError, "Título não pode ser vazio" if titulo.nil? || titulo.strip.empty?
        raise ArgumentError, "Valor deve ser maior que zero" if valor.nil? || valor <= 0

        @titulo = titulo
        @valor = valor
    end

    def to_s
        "Título: #{@titulo}, Valor: R$ #{'%.2f' % @valor}"
    end
end
