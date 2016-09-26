class HomeController < ApplicationController
	def index

	end

	def portfolio

	end

	def about

	end

	def contact_us
		@url = "contact_info"
	end

	def download_resume
		url = Rails.root.to_s+"/public/attachments/Milind_resume.pdf"
		file = open(url)
		send_file(file, :filename => "Milind_resume.pdf", :type => "application/pdf" , :disposition => "attachment")
	end

	def save_contact_details
		contact_info = ContactInfo.new(contact_info_params)
		if contact_info.save
			flash[:success] = "Thank you for your information. I will reach you very soon!!!"
			redirect_to contact_us_home_index_path
		else
			flash[:alert] = "Some error has occured. Please try again later or mail me on 66.milind@gmail.com"
			redirect_to contact_us_home_index_path
		end
	end

	def contact_info_params
		params.fetch(:contact_info).permit(:name,:email,:phone,:message,:city,:state,:country,:ip_address)
	end
end
