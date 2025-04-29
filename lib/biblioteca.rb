# Representa uma biblioteca que gerencia mídias.
require_relative 'banco_de_arquivos'
require_relative 'midia'

class Biblioteca
    include Enumerable

    # Inicializa a biblioteca com um banco de arquivos.
    def initialize(banco_de_arquivos = BancoDeArquivos.new)
        @banco_de_arquivos = banco_de_arquivos
    end

    # Adiciona uma mídia à biblioteca.
    # @param midia [Midia] a mídia a ser adicionada.
    def adiciona(midia)
        raise ArgumentError, "Objeto deve ser uma instância de Midia" unless midia.is_a?(Midia)

        salva midia do
            midias << midia
        end
    end

    # Retorna as mídias de uma categoria específica.
    # @param categoria [String] a categoria desejada.
    # @return [Array<Midia>] as mídias da categoria.
    def midias_por_categoria(categoria)
      midias.select do |midia|
        next if midia.nil? # Ignora objetos nil
        midia.categoria == categoria
      end
    end

    def midias
        @midias ||= @banco_de_arquivos.carrega
    end

    def each(&block)
        midias.each(&block)
    end

    private

    def salva(midia)
        begin
            @banco_de_arquivos.salva midia
            yield
        rescue StandardError => e
            puts "Erro ao salvar a mídia: #{e.message}"
        end
    end
end