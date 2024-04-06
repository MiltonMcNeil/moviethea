insert into customer(
	customer_id,
	first_name,
	last_name,
	email,
	billing_info
) values (
	1,
	'Frank',
	'Mwakajumba',
	'fmwakajumba@email.com',
	'1111-1111-1111-1111 777 07/07'
);

insert into movie(
	movie_id,
	title
) values (
	1,
	'Paris, Texas'
);

insert into tickets(
	ticket_number,
	time_date,
	sub_total,
	customer_id,
	movie_id
) values (
	1,
	'7:15 p.m., 6/25/22',
	12.50,
	1,
	1
);

insert into concessions(
	concession_receipt,
	drink_total,
	snack_total,
	customer_id
) values (
	1,
	8.00,
	0.00,
	1
);
 	
