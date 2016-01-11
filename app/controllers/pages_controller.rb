class PagesController < ApplicationController

  def home
  	require 'will_paginate/array'
  	@lyrics = Lyric.includes(:artist, :song, :published_at, :status, :verse).published.order("created_at DESC")
  end

  def dash
  	@all_posts = Lyric.all.order("published_at DESC").paginate(page: params[:page], per_page: 15)
  end
end
