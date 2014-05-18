#!/usr/bin/ruby

require 'fileutils'

#get the files
files = Dir["*"]

files.map do |name|
	match = /euler(\d+)\..+/.match(name)
	if (match)
		number = match[1]
		path = "Problem " + number + "/" + name
		FileUtils.mkdir_p(File.dirname(path))
		FileUtils.mv(name, path)
	end
end
