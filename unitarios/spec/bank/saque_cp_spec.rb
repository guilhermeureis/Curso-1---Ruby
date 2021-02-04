require_relative '../../app/bank'


describe ContaPoupanca do
    describe 'Saque' do
        #Contexto 1
        context 'quando o valor é positivo' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@cp.saldo).to eql 798.00
            end
        end
        #Contexto 2
        context 'quando o saldo é 0' do
            before(:all) do
                @cp = ContaPoupanca.new(0.00)
                @cp.saca(100.00)
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e o saldo permanece com zero' do
                expect(@cp.saldo).to eql 0.00
            end
        end
        # Contexto 3
        context 'quando o saldo é insuficiente' do
            before(:all) do
                @cp = ContaPoupanca.new(100.00)
                @cp.saca(101.00)
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e o saldo permanece com cem' do
                expect(@cp.saldo).to eql 100.00
            end
        end
        # Contexto 4
        context 'quando o valor do saque é maior que o limite ' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(500.00)
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Limite máximo por saque é de R$ 500'
            end
            it 'e o saldo permanece conforme o valor inicial' do
                expect(@cp.saldo).to eql 1000.00
            end
        end
    end
end