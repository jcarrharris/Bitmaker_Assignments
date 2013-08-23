class CRM
	def print_main_menu
		puts "[1] Add a new contact"
		puts "[2] Modify an existing contact"
		puts "[3] Delete a contact"
		puts "[4] Display all the contacts"
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
	  display_all_the_contacts if user_selected == 4
	  display_an_attribute if user_selected == 5
	  exit if user_selected == 6
	  # To be clear, the methods add_new_contact and modify_existing_contact
	  # haven't been defined yet
	end



class Contact
	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end

	def id =(1000)
	@id = 1000
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
	end

	def modify_existing_contact

		
	end


	#a getter (*get* the value of an attirbute)
	def email
		@email
	end

	#a setter (*set* the value of an attribute)
	def note(note)
		@note = note
	end
end

#require_relative "contact"

class Database
	@contacts = []
	@id = 1000

	def self.add_contact(contact)
		#<Contact dajhafskdjshsa>.id=(1000)
		contact.id = @id
		@contacts << ocntact
		@id += 1
	end

	def self.contacts
		@contacts
	end
end

contact = Contact.new("example data")
contact = Contact.new
p contact
Database.add_contact(contact)
Database.contacts

a_crm_app = CRM.new
a_crm.app.main_menu
