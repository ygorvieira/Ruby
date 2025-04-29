require 'rspec'
require_relative '../lib/livro'

RSpec.describe Livro do
  it 'cria um livro com atributos válidos' do
    livro = Livro.new(
      titulo: "Ruby Básico",
      autor: "João Silva",
      isbn: "12345",
      numero_de_paginas: 200,
      valor: 50.0,
      categoria: "Programação"
    )
    expect(livro.titulo).to eq("Ruby Básico")
    expect(livro.autor).to eq("João Silva")
    expect(livro.isbn).to eq("12345")
    expect(livro.numero_de_paginas).to eq(200)
    expect(livro.valor).to eq(50.0)
    expect(livro.categoria).to eq("Programação")
  end
end