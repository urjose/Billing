class Billing
    def initialize(quantity)
        @quantity = quantity
    end
end

obj_billing = Billing.new(ARGV[0])
