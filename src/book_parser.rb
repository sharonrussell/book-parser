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
    end
  end

	def Convert_Words_To_Array(data)
		data.split(" ")
		#parse in the data returned by Words and convert it to an array
	end

	def Count_Occurance_of_Words(array)
    #I want to create a new hash and add my array words to it as a key and the number of times they appear as a value
    words = Hash.new(0)
    array.each {|x|words[x.downcase]+= 1}
    return words
		end
end
