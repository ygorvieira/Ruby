# Gems externas
require 'formatador_moeda'
require 'active_file'

# Classes principais
require_relative 'midia'
require_relative 'dvd'
require_relative 'cd'
require_relative 'livro'
require_relative 'revista'

# Funcionalidades adicionais
require_relative 'biblioteca'
require_relative 'relatorio'
require_relative 'banco_de_arquivos'
require_relative 'document_not_found'

# Módulos auxiliares
require_relative 'venda_facil'
require_relative 'venda_facil/set'

# Carrega todos os arquivos do diretório `lib`
# Dir[File.join(__dir__, '*.rb')].sort.each { |file| require file }