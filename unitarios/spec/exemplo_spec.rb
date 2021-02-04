# Criando o primeiro suíte
describe 'suite spec' do
    # Criando o primeiro cenário
    it 'soma de dois valores' do
        soma = 10 + 5
        expect(soma).to eql 15
    end
end