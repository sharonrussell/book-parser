class BookParser

def initialize(file_path)
	@file_path = file_path
end

def Words
	data = ''
	f = File.open(@file_path,"r")
f.each_line do |line|
	data += line.chomp
	return data
	#data = data.split(" ")
end
end
end
