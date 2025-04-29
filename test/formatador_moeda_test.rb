require 'rspec'
require_relative '../lib/formatador_moeda'

class Produto
    include FormatadorMoeda
    attr_accessor :preco

    formata_moeda :preco

    def initialize(preco)
        @preco = preco
    end
end

RSpec.describe FormatadorMoeda do
  let(:produto) { Produto.new(123.45) }

  it 'formata o valor como moeda' do
    expect(produto.preco_formatado).to eq("R$ 123.45")
  end

  it 'retorna o valor por extenso em reais' do
    expect(produto.preco_por_extenso).to eq("cento e vinte e três reais e quarenta e cinco centavos")
  end

  it 'lança erro para valores não numéricos' do
    produto.preco = "abc"
    expect { produto.preco_formatado }.to raise_error(ArgumentError)
  end
end