-- 3. Reduce available copies according to issued books

update books
set available_copies = available_copies - 1
where book_id = 1 and available_copies > 0;

update books
set available_copies = available_copies - 1
where book_id = 3 and available_copies > 0;

update books
set available_copies = available_copies - 1
where book_id = 2 and available_copies > 0;
