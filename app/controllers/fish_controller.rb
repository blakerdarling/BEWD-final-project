class FishController < ApplicationController
	def index
		@fish = Fish.all.sort_by { |fish| fish.date }.reverse!
	end

	def new
		@fish= Fish.new
	end

	def create
		@fish = Fish.create(fish_params)
		current_user.fish << @fish
		redirect_to fish_index_path
	end

	def show
		@fish = Fish.find(params[:id])
	end

	def edit
		@fish = Fish.find(params[:id])
	end

	def update 
		fish = Fish.find(params[:id])
		fish.update_attributes(fish_params)
		redirect_to fish_index_path
	end

	def destroy
		fish = Fish.find(params[:id])
		fish.destroy
		redirect_to fish_index_path
	end

	private
	def fish_params
		params.require(:fish).permit(:date, :species, :lure, :weight, :length, :image_url, :zip_code, :notes )
	end
end
