class Billing
    def initialize(quantity, uprice, state)
        @quantity   = quantity.to_f
        @uprice     = uprice.to_f
        @state      = state.to_s
    end

    def mostrar
        calcular()
        return  "Cantidad= " + @quantity.to_s + "\n" "Precio Unitario = " + @uprice.to_s + "\n" "Subtotal = " + @subtotal.to_s + "\n" "Impuesto = "
    end

    def calcular
        @subtotal = @quantity * @uprice
    end
end

obj_billing = Billing.new(ARGV[0], ARGV[1], ARGV[2])
puts obj_billing.mostrar()