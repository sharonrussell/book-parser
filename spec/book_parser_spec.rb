require 'spec_helper'
require_relative '../src/book_parser'

describe BookParser do



	it 'outputs the words that appear in the book' do
		book_parser = BookParser.new("./src/book.txt")
		expect(book_parser.Words).to eq("The cat in the hat")
	end

	it 'takes the words and returns them in an array' do
		book_parser = BookParser.new("./src/book.txt")
		expect(book_parser.Convert_Words_To_Array("The cat in the hat")).to eq(["The", "cat", "in", "the", "hat"])
	end

	it 'takes the words in the array puts them in a hash and counts the occurances of words' do
		book_parser = BookParser.new("./src/book.txt")
		expect(book_parser.Count_Occurance_of_Words(["The", "cat", "in", "the", "hat"])).to eq("the"=>2, "cat"=>1, "in"=>1, "hat"=>1)
	end
end
