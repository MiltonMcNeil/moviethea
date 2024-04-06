create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	email VARCHAR(150),
	billing_info VARCHAR(150)
);
-- customer_id key used to track account used to purchase tickets and concessions.


create table movie (
	movie_id SERIAL primary key,
	title VARCHAR(150)
);

create table tickets (
	ticket_number SERIAL primary key,
	time_date VARCHAR(100),
	sub_total NUMERIC(8,2),
	customer_id INTEGER not null,
	movie_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	foreign key(movie_id) references movie(movie_id)
);
-- customer_id and movie_id keys were uses in tickets since it's information collected in purchase of ticket


create table concessions (
	concession_receipt SERIAL primary key,
	drink_total NUMERIC(8,2),
	snack_total NUMERIC(8,2),
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id)
);

select * from concessions 