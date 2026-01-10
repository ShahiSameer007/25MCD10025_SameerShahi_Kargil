-- 2. Data

insert into books values
(1, 'The Fellowship of the Ring', 'J.R.R. Tolkien', 10),
(2, 'The Two Towers', 'J.R.R. Tolkien', 8),
(3, 'A Game of Thrones', 'George R.R. Martin', 6),
(4, 'Dune', 'Frank Herbert', 5);

insert into members values
(101, 'James Walker', 'james.walker@gmail.com'),
(102, 'Elena Rossi', 'elena.rossi@gmail.com'),
(103, 'Lucas Müller', 'lucas.mueller@gmail.com');

insert into book_issue values
(1001, 1, 101, '2025-11-18', '2025-12-14'),
(1002, 3, 102, '2025-12-27', '2026-01-04'),
(1003, 2, 103, '2026-01-05', null);
