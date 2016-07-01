class Customer
	@@no_of_customer = 0
	def initialize(id, name, city)
		@cust_id = id
		@cust_name = name
		@cust_city = city
		@@no_of_customer += 1
	end

	def show()
		puts "Customer Id : #@cust_id"
		puts "Customer Name : #@cust_name"
		puts "Customer City : #@cust_city"
	end

	def noOfCustomer()
		puts "Total no of customer : #@@no_of_customer"
	end
end

cust1 = Customer.new("Id1", "Anurag", "Indore") 
cust1.show()
cust1.noOfCustomer()

cust1 = Customer.new("Id2", "Ravi", "Goa") 
cust1.show()
cust1.noOfCustomer()

cust1 = Customer.new("Id3", "XYZ", "Bhopal") 
cust1.show()
cust1.noOfCustomer()