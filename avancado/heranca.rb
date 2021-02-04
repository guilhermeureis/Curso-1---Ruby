class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca 
        self.modelo = modelo
    end

    def ligar
        puts "#{self.nome} está pronto para iniciar o trajeto."
    end

    def buzinar
        puts "Beep, beep!"
    end
end

class Carro < Veiculo
    def dirigir
        puts "#{self.nome} inicializando o trajeto."
    end
end

class Moto < Veiculo
    def pilotar
        puts "#{self.nome} inicializando o trajeto."
    end
end

civic = Carro.new('Civic', 'Honda', 'SI')
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new('Lancer', 'Mitsubishi', 'EVO')
lancer.ligar
lancer.buzinar
lancer.dirigir

fazer = Moto.new('Fazer', 'Yahama', '250x')
fazer.ligar
fazer.buzinar
fazer.pilotar