#!/usr/bin/ruby

require 'fileutils'

#get the files
files = Dir["*"]

files.map do |name|
	#this matches names starting with a euler[number].
	match = /euler(?<number>\d+)\..+/.match(name)
	if (match)
		#the number is stored in MatchData[:number]
		number = match[:number]
		path = "Problem " + number + "/" + name
		FileUtils.mkdir_p(File.dirname(path))
		FileUtils.mv(name, path)
	end
end
