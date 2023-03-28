require_relative 'lib/database_connection'
require_relative 'lib/book_store_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('book_store')

book_store_repository = BookRepository.new

book_list = book_store_repository.all

book_list.each do |book|
    puts "#{book.id}".ljust(3) + "- #{book.title}".ljust(25) + "- #{book.author_name}".ljust(5)
end


# Perform a SQL query on the database and get the result set.

## sql = 'SELECT id, title FROM albums;'

# result = DatabaseConnection.exec_params(sql, [])

# # Print out each record from the result set .

## result.each do |record|
##   p record
## end