-- 4. Librarian role creation

create role librarian login password 'lib123';
-- Mistakenly granted overly permissive privileges to librarian
grant select, insert, update, delete on books to librarian;
grant select, insert, update, delete on members to librarian;
grant select, insert, update, delete on book_issue to librarian;

-- revoke unnecessary privileges
revoke delete on books from librarian;
revoke delete on members from librarian;
revoke delete on book_issue from librarian;
-- Block Schema modification (prevent drop table and create table by librarian)
revoke create on schema public from librarian;