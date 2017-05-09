class Song < ActiveRecord::Base

	def self.add(new_title, new_artist, new_duration)
		Song.create(title: new_title, artist: new_artist, duration: new_duration)
	end

	def self.list
		Song.all.each_with_index do |x, index|
			puts "No.: #{index+1}" + "Title: #{x.title} | Artist: #{x.artist} | Duration: #{x.duration}" 
		end
	end

	def self.update(song_number, new_title, new_artist, new_duration)

		a = Song.all[song_number-1]
		a.update(title: new_title, artist: new_artist, duration: new_duration)
		puts "Your song has been updated"
		puts "Title: #{new_title} | Artist: #{new_artist} | Duration: #{new_duration}" 
		Song.list

	end
		

	def self.remove(num)
		Song.all.each_with_index do |x, index|
			if num == index + 1
				x.destroy
				
				puts "The music with ID #{index} has been deleted."

			end
		end
	end

end