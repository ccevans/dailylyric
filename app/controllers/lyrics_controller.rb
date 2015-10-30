class LyricsController < ApplicationController
	before_action :find_lyric, only: [:show, :edit, :update, :destroy]
	
	def index
		@lyrics = Lyric.published.order("created_at DESC").take(1)
	end

	def show
	end

	def new
		@lyric = Lyric.new
	end

	def create
		@lyric = Lyric.new(lyric_params)
		if @lyric.save
			redirect_to @lyric, notice: "Successfully created new lyric"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @lyric.update(lyric_params)
			redirect_to @lyric
		else
			render 'edit'
		end

	end

	def destroy
		@lyric.destroy
		redirect_to root_path, notice: "Successfully deleted recipe"
	end

	private

	def lyric_params
		params.require(:lyric).permit(:title, :artist, :song, :link, :published_at, :status, lines_attributes: [:id, :name, :_destroy])
	end

	def find_lyric
		@lyric = Lyric.find(params[:id])
	end
end
