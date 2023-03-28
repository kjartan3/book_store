require "book_store_repository"
require "book_store"

RSpec.describe BookRepository do
    def reset_book_store_table
        seed_sql = File.read('spec/seeds_books.sql')
        connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store' })
        connection.exec(seed_sql)
        before(:each) { reset_book_store_table }
    end


    it "returns all books" do 
        repo = BookRepository.new
        all_books = repo.all
        expect(all_books.length).to eq 2
        expect(all_books[0].id).to eq "1"
        expect(all_books[0].title).to eq "The Old Man and the Sea"
        expect(all_books[0].author_name).to eq  "Ernest Hemingway"
        expect(all_books[1].id).to eq "2"
        expect(all_books[1].title).to eq "Cujo"
        expect(all_books[1].author_name).to eq "Stephen King"
    end

    it "returns a single book" do
        repo = BookRepository.new
        single_book = repo.find(1)
        expect(single_book.id).to eq "1"
        expect(single_book.title).to eq "The Old Man and the Sea"
        expect(single_book.author_name).to eq  "Ernest Hemingway"
    end
end