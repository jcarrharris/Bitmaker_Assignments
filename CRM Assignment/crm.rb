require_relative "contact"

class Database
	@contacts = []
	@id = 1000

	def self.add_contact(contact)
		#<Contact dajhafskdjshsa>.id=(@id)
		contact.id = @id
		@contacts << ocntact
		@id += 1
	end

	def self.contacts
		@contacts
	end
end

contact = Contact.new
contact = Contact.new
p contact
Database.add_contact(contact)
Database.contacts
