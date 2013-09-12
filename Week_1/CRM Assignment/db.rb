require_relative "contact"

class Database
	@contacts = []
	@id = 1000

	def self.add_contact(contact)
		the_contact.id = @id
		@contacts << the_contact
		@id += 1
	end

	def self.contacts
		@contacts.select {|contact| contact.id == contact_id.to_i}
	end

	def self.display_all
	  p @contacts
	end

	def self.delete_contact
	 
	end


end
