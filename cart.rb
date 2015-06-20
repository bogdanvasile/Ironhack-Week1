class Fruits
    attr_accessor :fruit, :price

	def initialize(fruit, price)
		@fruit = fruit
		@price = price
	end
end


class ShoppingCart

	def initialize
		@cart = []
		@sum = 0
		@fruit = nil
		@price = nil
	end

    def add(fruit)
    	@cart << fruit
    end

    def cost
        @cart.each { |fruit| @sum+=fruit.price }
        puts @sum 
    end

    def discount_ten 
        if @cart.length > 5
        puts discount_ten = @sum - (@sum * 10/100) 
    end

    def discount_weekend
    	t = Time.local(2015, 6, 22)
        if t.strftime("%A") == "Saturday" || t.strftime("%A") == "Sunday"
        	puts "You get 10% discount for fruits"
        else 
        	puts "You get the normal price for fruits"
        end 
    end
end 
   
end


apple = Fruits.new("apple", 10)
orange = Fruits.new("orange", 5)
banana = Fruits.new("banana", 20)
watermelon = Fruits.new("watermelon", 50)
rice = Fruits.new("rice", 1)
vc = Fruits.new("vc", 150)
anchovies = Fruits.new("anchovies", 2)
cart = ShoppingCart.new
cart.add apple
cart.add orange
cart.add banana
cart.add watermelon
cart.add rice
cart.add vc
cart.add anchovies
cart.cost
cart.discount_ten
cart.discount_weekend