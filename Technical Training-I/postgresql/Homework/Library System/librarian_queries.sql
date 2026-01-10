-- 5. Queries by Librarian

-- View all books
select * from books;

-- View all members
select * from members;

-- View all issued books
select * from book_issue;

-- Issue new book
insert into book_issue values
(1004, 4, 101, '2026-01-10', null);

update books
set available_copies = available_copies - 1
where book_id = 4 and available_copies > 0;

-- View currently issued books (not returned yet)
select * from book_issue
where return_date is null;

-- View books issued by each member
select
    b.title,
    m.member_name,
    bi.issue_date
from book_issue bi
join books b on bi.book_id = b.book_id
join members m on bi.member_id = m.member_id;

-- Currently available books
select title, available_copies
from books
where available_copies > 0;

