class CatchesController < ApplicationController
	def index
		@catches = Catch.all.sort_by { |c| c.date }.reverse!
	end

	def new
		@catch = Catch.new
	end

	def create
		@catch = Catch.create(catch_params)
		current_user.catch << @catch
		redirect_to catches_index_path
	end

	def show
		@catch = Catch.find(params[:id])
	end

	def edit
		@catch = Catch.find(params[:id])
	end

	def update 
		catch = Catch.find(params[:id])
		catch.update_attributes(catch_params)
		redirect_to catches_path
	end

	def destroy
		catch = Catch.find(params[:id])
		catch.destroy
		redirect_to catches_path
	end

	private
	def catch_params
		params.require(:catch).permit(:date, :species, :lure, :weight, :length, :image_url, :zip_code, :notes )
	end
end
