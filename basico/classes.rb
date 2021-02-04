# Ruby é uma linguagem considerada puramente orientada ao objeto
# No Ruby tudo são objetos

# Classes são abstrações do mundo real
# Classes possuem atributos e métodos, ou seja, características e ações

# Carro (Nome, Marca, Modelo, Cor, Quantidade de Portas)
# Ligar, Businar, Parar

class Carro
    # Atribuindo valores para a classe
    attr_accessor :nome

    def ligar
        puts 'O carro está pronto para iniciar o trajeto.'
    end
    
end


# Intanciar carro

civic = Carro.new
civic.nome = 'CIVIC'
# puts civic.class
puts civic.nome
civic.ligar