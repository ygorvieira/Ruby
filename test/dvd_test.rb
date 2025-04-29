require 'rspec'
require_relative '../lib/dvd'

RSpec.describe DVD do
  it 'cria um DVD com atributos válidos' do
    dvd = DVD.new(titulo: "Inception", valor: 30.0, categoria: "Filme")
    expect(dvd.titulo).to eq("Inception")
    expect(dvd.valor).to eq(30.0)
    expect(dvd.categoria).to eq("Filme")
    expect(dvd.desconto).to eq(0.3)
  end

  it 'não permite valor negativo' do
    expect { DVD.new(titulo: "Inception", valor: -10.0, categoria: "Filme") }.to raise_error(ArgumentError)
  end
end