class NewslettersController < ApplicationController
	# before_action :set_header, only: [:index]
	before_action :set_newsletter, only: [:show, :edit, :close, :open, :update, :destroy]

	def index
		@newsletters = Newsletter.all
	end

	def show
	end 

	def new
		@newsletter = Newsletter.new
	end

	def create
		@newsletter = Newsletter.new(newsletter_params)
		@newsletter.save
		redirect_to new_newsletter_header_path(@newsletter)
	end

	def edit
	end

	def update
		@newsletter.update(newsletter_params)
		redirect_to newsletters_path
	end

	def close
		@newsletter.update_attribute(:closed, true)
		redirect_to newsletters_path
	end

	def open
		@newsletter.update_attribute(:closed, false)
		redirect_to newsletters_path
	end

	def destroy
		@newsletter.destroy
		redirect_to newsletters_path
	end

	private

		def newsletter_params
			params.require(:newsletter).permit(:gct_id, :adv_id, :adv_name, :send_date, :closed)
		end

		def set_newsletter
			@newsletter = Newsletter.find(params[:id])
		end

		# def set_header
		# 	@header = @newsletter.header.find(params[:newsletter_id])
		# end     
end
