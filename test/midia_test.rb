require 'rspec'
require_relative '../lib/midia'

RSpec.describe Midia do
  it 'calcula o valor com desconto corretamente' do
    midia = Midia.new(valor: 100.0, desconto: 0.2)
    expect(midia.valor_com_desconto).to eq(80.0)
  end

  it 'não permite valor negativo' do
    expect { Midia.new(valor: -10.0) }.to raise_error(ArgumentError)
  end

  it 'não permite desconto fora do intervalo 0-1' do
    expect { Midia.new(desconto: 1.5) }.to raise_error(ArgumentError)
  end
end