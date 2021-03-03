class TextlinksController < ApplicationController
	before_action :get_newsletter
	before_action :set_textlink, only: [:show, :edit, :update, :destroy]

	def index
	    @textlinks = @newsletter.textlinks
	 end

	def create
		@textlink = @newsletter.textlinks.build(textlink_params)
		@textlink.save
		redirect_to newsletter_path(@newsletter)
	end

	private

	def textlink_params
		params.require(:textlink).permit(:link_id, :copy, :newsletter_id)
	end 

	def get_newsletter
		@newsletter = Newsletter.find(params[:newsletter_id])
	end

	def set_textlink
		@textlink = @newsletter.textlinks.find(params[:id])
	end   
end
