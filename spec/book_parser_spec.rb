require 'spec_helper'
require_relative '../src/book_parser'

describe BookParser do



	it 'outputs the words that appear in the book' do
		book_parser = BookParser.new("book.txt")
		expect(book_parser.Words).to eq("The cat in the hat")
	end
end
