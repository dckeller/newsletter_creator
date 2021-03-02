class HeadersController < ApplicationController
	before_action :set_header, only: [:show, :edit, :update, :destroy]

	def index
		@headers = Header.all
	end

	def show
		@newsletter = Newsletter.find(params[:newsletter_id])
	end 

	def new
		@newsletter = Newsletter.find(params[:newsletter_id])
		@header = Header.new
	end

	def create
		@newsletter = Newsletter.find(params[:newsletter_id])
		@header = @newsletter.create_header(header_params)
		if @header.save
			flash[:notice] = "Your Header was Created"
			redirect_to newsletter_header_path(@newsletter, @header)
		else
			render 'new'
		end
	end

	def edit
		@newsletter = Newsletter.find(params[:newsletter_id])
	end

	def update
		@newsletter = Newsletter.find(params[:newsletter_id])
		@header.update(header_params)
		redirect_to newsletter_header_path(@newsletter, @header)
	end

	def destroy
		@header.destroy
		redirect_to newsletters_path
	end

	private

		def header_params
			params.require(:header).permit(:date, :header_image, :subject_line, :body_copy)
		end

		def set_header
			@header = Header.find(params[:id])
		end
end  
