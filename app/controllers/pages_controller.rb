class PagesController < ApplicationController
	
  def home
  	require 'will_paginate/array'
  	@lyrics = Lyric.includes(:artist, :song, :published_at, :status, :verse).published.order("created_at DESC")
  end

  def dash
  	@all_posts = Lyric.all.order("created_at DESC")
  end
end
