require_relative "db"
require_relative "contact"

class CRM

	def initialize(name)
			@name = name
	end

	def start # coordinator
			main_menu
			exit
	end

	def print_main_menu
	  puts "[1] Add new contact"
	  puts "[2] Modify existing contact"
	  puts "[3] Delete a contact"
	  puts "[4] Display all contacts"
	  puts "[5] Display an attribute" 
	  puts "[6] Exit"
	  puts "Enter a number: "
	end

	def main_menu
	  print_main_menu
	  user_selected = gets.to_i
	  call_option(user_selected)
	end

	def call_option(user_selected)
	  add_new_contact if user_selected == 1
	  modify_existing_contact if user_selected == 2
	  delete_contact if user_selected == 3 
	  display_all_contact if user_selected == 4 
	  display_an_ttribute if user_selected == 5
	  exit if user_selected == 6
	end

	def add_new_contact
		print "Enter First Name: "
		first_name = gets.chomp
		print "Enter Last Name: "
		last_name = gets.chomp
		print "Enter Email Address: "
		email = gets.chomp
		print "Enter a Note: "
		note = gets.chomp
		contact = Contact.new(first_name, last_name, email, note)
		Database.add_contact(contact)
		main_menu
	end
	
	def modify_existing_contact()
		print "Enter ID to modify: "
		email = gets.chomp
		contact = Database.finder(contact_id)

		print "Update your email:"
		email = gets.chomp
		contact = Database.find_all_contact(email)
		main_menu
	end

	def delete_contact
		puts "input id of contact you want to delete"
		id_to_delete = gets.chomp  
	end

	def display_all_contact
		Database.display_all
	end
end

session = CRM.new("Welcome!") 
# synonymous with new, calling new is calling initialize
crm_app.main_menu






