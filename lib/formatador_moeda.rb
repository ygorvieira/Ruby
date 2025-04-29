# Módulo para formatar valores monetários
module FormatadorMoeda
    require 'bundler/setup'
    require 'brnumeros'

    # Métodos de instância
    def metodo_de_instancia
        "um metodo de instancia qualquer"
    end

    # Métodos de classe
    module ClassMethods
        # Define métodos para formatar valores monetários
        # @param variaveis_e_metodos [Array<Symbol>] nomes de variáveis ou métodos
        def formata_moeda(*variaveis_e_metodos)
            variaveis_e_metodos.each do |name|
                # Retorna o valor formatado como moeda
                define_method("#{name}_formatado") do
                    valor = obter_valor(name)
                    "R$ #{'%.2f' % valor}"
                end

                # Retorna o valor por extenso em reais
                define_method("#{name}_por_extenso") do
                    valor = obter_valor(name)
                    valor.por_extenso_em_reais
                end
            end
        end
    end

    # Inclui os métodos de classe no módulo base
    def self.included(base)
        base.extend ClassMethods
    end

    private

    def obter_valor(name)
        valor = respond_to?(name) ? send(name) : instance_variable_get("@#{name}")
        raise ArgumentError, "O valor de #{name} deve ser numérico" unless valor.is_a?(Numeric)
        valor
    end
end