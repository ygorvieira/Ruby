require 'rspec'
require_relative '../lib/relatorio'
require_relative '../lib/biblioteca'
require_relative '../lib/livro'

RSpec.describe Relatorio do
  let(:livro1) { Livro.new("Livro 1", "Autor 1", "123", 100, 50.0, "Ficção") }
  let(:livro2) { Livro.new("Livro 2", "Autor 2", "456", 200, 30.0, "Ficção") }
  let(:biblioteca) { double("Biblioteca", livros: [livro1, livro2]) }
  let(:relatorio) { Relatorio.new(biblioteca) }

  it 'calcula o total corretamente' do
    expect(relatorio.total).to eq(80.0)
  end

  it 'retorna os títulos corretamente' do
    expect(relatorio.titulos).to eq(["Livro 1", "Livro 2"])
  end

  it 'retorna 0 para total em biblioteca vazia' do
    biblioteca_vazia = double("Biblioteca", livros: [])
    relatorio_vazio = Relatorio.new(biblioteca_vazia)
    expect(relatorio_vazio.total).to eq(0)
  end

  it 'retorna lista vazia para títulos em biblioteca vazia' do
    biblioteca_vazia = double("Biblioteca", livros: [])
    relatorio_vazio = Relatorio.new(biblioteca_vazia)
    expect(relatorio_vazio.titulos).to eq([])
  end
end