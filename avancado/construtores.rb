class Conta
    attr_accessor :saldo, :nome

    # Construtor do RUBY
    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome    
    end
    
    def deposita(valor)
        self.saldo += valor
        # puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
        # Interpolação
        puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}."
    end
end

c = Conta.new('Guilherme')

c.deposita(100.00)
puts c.saldo
puts c.nome

c.deposita(10.00)
puts c.saldo
puts c.nome