require_relative '../../config/application'

class CreateSongs < ActiveRecord::Migration[5.0]

	def change
		create_table :songs do |t|
			t.string :title 
			t.string :artist
			t.string :duration
			t.timestamp
		end
	end
end
