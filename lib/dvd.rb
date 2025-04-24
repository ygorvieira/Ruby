class DVD < Midia
    def initialize(titulo, valor, categoria)
        super # invocando super sem os parâmetros
        @titulo = titulo
        @valor = valor
        @categoria = categoria
    end

    def to_s
        %Q{ Título: #{@titulo}, Valor: #{@valor} }
    end
end