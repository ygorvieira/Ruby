class Relatorio
    def initialize(biblioteca)
        @biblioteca = biblioteca
    end

    def total
        @biblioteca.livros.map(&:valor).inject(:+)
    end

    def titulos
        @bibiloteca.livros.map &:titulo 
    end
end