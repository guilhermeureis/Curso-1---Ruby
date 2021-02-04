require_relative '../../app/bank.rb'



describe ContaCorrente do
    describe 'Saque' do
        #Contexto 1
        context 'quando o valor é positivo' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@cc.saldo).to eql 795.00
            end
        end
        #Contexto 2
        context 'quando o saldo é 0' do
            before(:all) do
                @cc = ContaCorrente.new(0.00)
                @cc.saca(100.00)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e o saldo permanece com zero' do
                expect(@cc.saldo).to eql 0.00
            end
        end
        # Contexto 3
        context 'quando o saldo é insuficiente' do
            before(:all) do
                @cc = ContaCorrente.new(100.00)
                @cc.saca(101.00)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e o saldo permanece com cem' do
                expect(@cc.saldo).to eql 100.00
            end
        end
        # Contexto 4
        context 'quando o valor do saque é maior que o limite ' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(700.00)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Limite máximo por saque é de R$ 700'
            end
            it 'e o saldo permanece conforme o valor inicial' do
                expect(@cc.saldo).to eql 1000.00
            end
        end
    end
end