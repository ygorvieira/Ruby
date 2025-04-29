require 'rspec'
require_relative '../lib/cd'

RSpec.describe CD do
  it 'cria um CD com atributos válidos' do
    cd = CD.new(titulo: "Greatest Hits", valor: 50.0, categoria: "Música")
    expect(cd.titulo).to eq("Greatest Hits")
    expect(cd.valor).to eq(50.0)
    expect(cd.categoria).to eq("Música")
    expect(cd.desconto).to eq(0.3)
  end

  it 'não permite valor negativo' do
    expect { CD.new(titulo: "Greatest Hits", valor: -10.0, categoria: "Música") }.to raise_error(ArgumentError)
  end
end