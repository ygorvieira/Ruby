require 'rspec'
require_relative '../lib/loja_virtual'

RSpec.describe 'Carregamento de Loja Virtual' do
  it 'carrega todas as dependências sem erros' do
    expect { require_relative '../lib/loja_virtual' }.not_to raise_error
  end
end