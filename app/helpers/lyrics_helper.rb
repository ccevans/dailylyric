module LyricsHelper
	def status_for(lyric)
		if lyric.published_at?
			if lyric.published_at > Time.zone.now
				"Scheduled"
			else
				"Published"
			end

		else
			"Draft"
		end
	end
end
