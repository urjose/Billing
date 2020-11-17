class Billing
    def initialize(quantity, uprice)
        @quantity   = quantity.to_f
        @uprice     = uprice.to_f
    end

    def mostrar
        calcular()
        return  "Cantidad= " + @quantity.to_s + "\n" "Precio Unitario = " + @uprice.to_s + "\n" "Subtotal = "
    end

    def calcular
        @subtotal = @quantity * @uprice
    end
end

obj_billing = Billing.new(ARGV[0], ARGV[1])
puts obj_billing.mostrar()