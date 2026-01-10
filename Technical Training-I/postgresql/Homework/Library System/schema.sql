-- 1. Schema

-- BOOKS TABLE
create table books (
    book_id int primary key,
    title varchar(100) not null,
    author varchar(100) not null,
    available_copies int check (available_copies >= 0)
);

-- MEMBERS TABLE
create table members (
    member_id int primary key,
    member_name varchar(100) not null,
    email varchar(100) unique
);

-- BOOK ISSUE TABLE
create table book_issue (
    issue_id int primary key,
    book_id int references books(book_id),
    member_id int references members(member_id),
    issue_date date not null,
    return_date date
);
