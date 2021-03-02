class CuentaBancaria
    #Crear la clase con el nombre CuentaBancaria
    
    attr_accessor :user_name, :user_account, :vip
    #Los métodos getter y setter para el atributo nombre_de_usuario
    
    def initialize(user_name, user_account, vip = 0)
        @user_name = user_name
        @user_account = user_account
        @vip = vip
        #Crear el constructor que reciba el nombre_usuario y numero_de_cuenta y lo asigne a los atributos
        if user_account.digits.count != 8
            raise RangeError, 'number of digits differente 8'
        end      
    end  
    #Levantar una excepción del tipo RangeError si el atributo numero_de_cuenta tiene un número de dígitos distinto a 8 (se puede ocupar el método .digits para obtener los dígitos y .count para contarlos
    def number_account
        "#{@vip}-#{user_account}"
    end
    #Crear un método llamado numero_de_cuenta que devuelva el número de cuenta con un prefijo '1-' si es vip y '0-' si no lo es.
end

prueba = CuentaBancaria.new('Jose', 12345678, 1)
puts prueba.inspect
puts prueba.number_account



