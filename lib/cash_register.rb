require 'pry'

class CashRegister

	attr_accessor :total, :discount, :prev_total

	def initialize(discount=0)
		@total = 0
		@discount = discount
		@items = []
		@prev_total = 0
	end

	def add_item(title, price, quantity=1)
		@prev_total = @total
		@total += price * quantity

		quantity.times do @items << title
		end
	end

	def apply_discount
		if @discount > 0
			@total -= @total * @discount / 100 
			"After the discount, the total comes to $#{@total}."
		else 
			"There is no discount to apply."
		end
		
	end

	def items
		@items
	end

	def void_last_transaction
		difference = @total - @prev_total
		@total -= difference

	end



	

end
