# begin
#     # Devo tentar alguma coisa (TRY)
#     file = File.open('./ola.txt')
#     if file
#         puts file.read
#     end
# rescue Exception => e 
#     # Obter um possível erro (CATCH)
#     puts e.message
#     puts e.backtrace
# end


def soma (n1,n2)
    puts n1+n2
rescue Exception => e
    # puts e.message
    puts 'Erro ao executar a soma.'
end

soma('100',10)
