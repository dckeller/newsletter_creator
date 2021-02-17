class NewslettersController < ApplicationController
	before_action :set_newsletter, only: [:show, :edit, :update, :destroy]

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
		redirect_to '/newsletters'
	end

	def edit
	end

	def update
		@newsletter.update(newsletter_params)
		redirect_to '/newsletters'
	end

	def destroy
		@newsletter.destroy
		redirect_to 'newsletters'
	end

	private

	def newsletter_params
		params.require(:newsletter).permit(:gct_id, :adv_id, :adv_name, :send_date)
	end

	def set_newsletter
		@newsletter = Newsletter.find(params[:id])
	end      
end
