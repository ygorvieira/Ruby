require 'yaml'
require 'fileutils'

class BancoDeArquivos
  def salva(midia)
    return if midia.nil? # Não salva objetos nil

    FileUtils.mkdir_p("db")
    File.open("db/#{midia.class.name.downcase}s.yml", "a") do |file|
      file.puts YAML.dump(midia)
    end
  end

  def carrega
    return [] unless File.exist?("db/midias.yml")

    File.open("db/midias.yml", "r") do |file|
      file.each_line.map do |line|
        YAML.safe_load(line, permitted_classes: [Midia], aliases: true)
      end.compact # Remove valores nil
    end
  end
end