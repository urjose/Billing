class Billing
    def initialize(quantity)
        @quantity = quantity
    end

    def mostrar
        return "Cantidad= "
    end
end

obj_billing = Billing.new(ARGV[0])
puts obj_billing.mostrar()