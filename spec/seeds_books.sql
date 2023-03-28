TRUNCATE TABLE books RESTART IDENTITY;

INSERT INTO books (title, author_name) VALUES ('The Old Man and the Sea', 'Ernest Hemingway');
INSERT INTO books (title, author_name) VALUES ('Cujo', 'Stephen King');

# Hi, I had to take some time to research what I had done wrong or was missing,
# I simply forgot to add the sql inputs above, firstly to truncate the previous database and add the new books
# however now it runs fine