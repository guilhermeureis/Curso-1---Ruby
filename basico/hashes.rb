# Coleções com chaves e valores
# Mudança de chave de inteiro para qualquer valor

carro = Hash[nome: 'Civic', marca: 'Honda', cor: 'Vermelho']

puts carro[:nome]
puts carro[:marca]

carro[:modelo] = 'SI'

puts carro