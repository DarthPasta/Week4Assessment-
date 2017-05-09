class Song < ActiveRecord::Base

	def self.list
		Song.all.each_with_index do |x, index|
			puts "No.: #{index+1}" + "Title: #{x.title} | Artist: #{x.artist} | Duration: #{x.duration}" 
		end
	end

	def self.update(song_number, new_title, new_artist, new_duration)

		a = Song.all[song_number-1]
		a.update(title: new_title, artist: new_artist, duration: new_duration)
			# a.id = new_id 
			# a.title = new_title 
			# a.artist = new_artist 
			# a.duration = new_duration
			# a.save
		puts "Your song has been updated"
		puts "Title: #{new_title} | Artist: #{new_artist} | Duration: #{new_duration}" 
		Song.list

	end
		

	def self.remove(num)

		self.all.each do |x|
			if num == x.id
				x.destroy
				puts "The music with ID #{x.id} has been deleted."
			else
				puts "The music ID does not exist."
			end
		end
	end

end