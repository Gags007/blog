class ContactsController < ApplicationController
  	def new
	  	@contact = Contact.new
	  	respond_to do |format|
	  		format.html  
	  	end
	end


	def create
		@contact = Contact.new(params[:contact])
		respond_to do |format|
			if @contact.save
				format.html { redirect_to new_contact_path, :notice => "Contact detail added successfully." }
			end
		end
	end
end