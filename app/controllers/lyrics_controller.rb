class LyricsController < ApplicationController
	before_action :find_lyric, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
	respond_to :html, :js

	def index
		@lyrics = Lyric.paginate(page: params[:page], per_page: 6).published.order('created_at DESC')
		
		respond_to do |format|
		  format.html
		  format.js
		end

		@xtime = @lyrics.count

	end

	def show
	end

	def new
		@lyric = current_user.lyrics.build
		@lyric.lines.build
	end

	def create
		@lyric = current_user.lyrics.build(lyric_params)
		if @lyric.save
			redirect_to action: "index"
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
		redirect_to root_path, notice: "Successfully deleted lyric"
	end

	private

	def lyric_params
		params.require(:lyric).permit(:title, :artist, :song, :link, :curator, :published_at, :status, :verse, :audiolink, lines_attributes: [:id, :name, :_destroy])
	end

	def find_lyric
		@lyric = Lyric.find(params[:id])
	end
end
