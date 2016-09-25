class HomeController < ApplicationController
	def index

	end

	def portfolio

	end

	def about
		
	end

	def contact_us
	end

	def download_resume
		url = Rails.root.to_s+"/public/attachments/Milind_resume.pdf"
		file = open(url)
		send_file(file, :filename => "Milind_resume.pdf", :type => "application/pdf" , :disposition => "attachment")
	end
end
