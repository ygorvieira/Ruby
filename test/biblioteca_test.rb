require 'rspec'
require_relative '../lib/biblioteca'
require_relative '../lib/midia'

RSpec.describe Biblioteca do
  let(:biblioteca) { Biblioteca.new }
  let(:midia) { Midia.new(titulo: "Ruby Essentials", valor: 50.0, desconto: 0.1, categoria: "Programação") }

  it 'adiciona uma mídia à biblioteca' do
    biblioteca.adiciona(midia)
    expect(biblioteca.to_a).to include(midia)
  end

  it 'retorna mídias por categoria' do
    biblioteca.adiciona(midia)
    expect(biblioteca.midias_por_categoria("Programação")).to include(midia)
  end
end