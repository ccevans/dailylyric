class PagesController < ApplicationController
  def home
  	@lyrics = Lyric.published.order("created_at DESC").take(1)
  end
end
