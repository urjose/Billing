class Billing
    def initialize(quantity, uprice)
        @quantity   = quantity
        @uprice     = uprice
    end

    def mostrar
        return  "Cantidad= " + @quantity 
    end
end

obj_billing = Billing.new(ARGV[0], ARGV[1])
puts obj_billing.mostrar()