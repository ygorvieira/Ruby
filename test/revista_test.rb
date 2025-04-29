require 'rspec'
require_relative '../lib/revista'

RSpec.describe Revista do
  it 'cria uma revista com atributos válidos' do
    revista = Revista.new(titulo: "Revista Ruby", valor: 15.0)
    expect(revista.titulo).to eq("Revista Ruby")
    expect(revista.valor).to eq(15.0)
  end

  it 'não permite título vazio' do
    expect { Revista.new(titulo: "", valor: 15.0) }.to raise_error(ArgumentError)
  end

  it 'não permite valor menor ou igual a zero' do
    expect { Revista.new(titulo: "Revista Ruby", valor: 0) }.to raise_error(ArgumentError)
  end
end