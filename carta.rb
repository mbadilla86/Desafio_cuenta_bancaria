class Carta
    #Crear la clase carta con los atributos numero y pinta (o color)    
    
    attr_accessor :number, :color
    #Agregar los getters y setters a ambos atributos
    
    def initialize(number, color)
        @number = number
        @color = color
    end
    def self.number
        Random.rand(1..13)
    end
    def self.color
        ['C', 'D', 'E', 'T'].sample
    end
end
#Crear el constructor de la clase carta que le permita recibir un numero del 1 al 13 y la pinta que está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D', Espada: 'E' o Trébol: 'T'

first_carta = Carta.new(["c", "d", "e", "t"], Random.rand(1...13))
number = [c = 'hearts', d = 'diamonds', t = 'clover', e = 'spades']
puts first_carta.color
#Para escoger un número al azar ocupar Random.rand(rango_inferior, rango_superior)

array = []
5.times do
    color = Carta.color
    number = Carta.number
    carta = Carta.new(number, color)
    array.push carta
end
print array
#Agregar las pintas posibles en un arreglo y ocupar el método .sample, Probar la clase creando un arreglo con 5 cartas.