class Billing
    def initialize(quantity, uprice, state)
        @quantity   = quantity.to_f
        @uprice     = uprice.to_f
        @state      = state.to_s
    end

    def show
        calculate()
        output = "Cantidad= " + @quantity.to_s 
        output += "\n" 
        output += "Precio Unitario= " + @uprice.to_s 
        output += "\n" 
        output += "Subtotal= " + @subtotal.to_s
        output += "\n" 
        output += "Impuesto(#{@state})= " + @tax.to_s
        output += "\n"
        output += "Descuento= " + @discount.to_s
        output += "\n"
        output += "Total= "
        output += "\n"
        return output
    end

    def calculate
        @subtotal   = @quantity * @uprice
        @discount   = searchDiscount()
        @tax        = searchTax()
    end

    def searchDiscount()
        discount = {"1000" => 3, "5000" => 5, "7000" => 7, "10000" => 10, "50000" => 15}

        case @subtotal
            when 0 .. 1000
                return 0.
            when 1001 .. 5000
                return discount["1000"]
            when 5001 .. 7000
                return discount["5000"]
            when 7001 .. 10000
                return discount["7000"]
            when 10001 .. 50000
                return discount["10000"]
            else
                return discount["50000"]
            end
    end

    def searchTax()
        tax = {"CA" => 8.25}

        return tax[@state]
    end
end

obj_billing = Billing.new(ARGV[0], ARGV[1], ARGV[2])
puts obj_billing.show()