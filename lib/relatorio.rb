# Representa um relatório baseado em uma biblioteca.
class Relatorio
    # Inicializa o relatório com uma biblioteca.
    # @param biblioteca [Biblioteca] a biblioteca que será usada no relatório.
    def initialize(biblioteca)
        raise ArgumentError, "O objeto deve responder ao método 'livros'" unless biblioteca.respond_to?(:livros)
        @biblioteca = biblioteca
    end

    def livros
        @biblioteca.livros || []
    end

    def total
        livros.map(&:valor).inject(0, :+)
    end

    def titulos
        livros.map(&:titulo)
    end
end