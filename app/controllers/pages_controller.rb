class PagesController < ApplicationController
  def home
  	require 'will_paginate/array'
  	@lyrics = Lyric.includes(:artist, :song, :published_at, :status, :verse).published.order("created_at DESC")
@all_posts = (@lyrics).paginate(:page =>params[:page], :per_page => 10)
  end
end
