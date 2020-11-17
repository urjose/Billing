class Billing
    def initialize(quantity, uprice, state)
        @quantity   = quantity.to_f
        @uprice     = uprice.to_f
        @state      = state.to_s
    end

    def mostrar
        calcular()
        output = "Cantidad= " + @quantity.to_s 
        output += "\n" 
        output += "Precio Unitario= " + @uprice.to_s 
        output += "\n" 
        output += "Subtotal= " + @subtotal.to_s
        output += "\n" 
        output += "Impuesto(#{@state})= "
        output += "\n"
        output += "Descuento(#{@state})= "
        output += "\n"
        return output
    end

    def calcular
        @subtotal = @quantity * @uprice
    end
end

obj_billing = Billing.new(ARGV[0], ARGV[1], ARGV[2])
puts obj_billing.mostrar()