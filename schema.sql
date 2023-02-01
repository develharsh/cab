create table queries(
	id int unique GENERATED ALWAYS AS IDENTITY,
	name varchar(100) not null,
	phone varchar(13) not null,
	from_place varchar(100) not null,
	to_place varchar(100) not null,
	primary key(id)
);
create table customers(
	id int unique GENERATED ALWAYS AS IDENTITY,
	name varchar(100) not null,
	phone varchar(13) not null
);
create table vehicles(
	id int unique GENERATED ALWAYS AS IDENTITY,
	title varchar(100) not null,
	reg_no varchar(15) not null,
	image TEXT,
	perkm smallint,
	nightcost smallint
	owner_details varchar(100) not null,
);
create table bookings(
	id int GENERATED ALWAYS AS IDENTITY,
	customer int not null,
	from_place varchar(100) not null,
	to_place varchar(100) not null,
	on_date date not null,
	round_trip bool not null,
	return_date date,
	vehicle int not null,
	driver_name varchar(50) not null,
	driver_phone varchar(13) not null,
	total_cost int not null,
	paid int not null,
	primary key(id),
	constraint fk_customer foreign key(customer) references customers(id),
	constraint fk_vehicle foreign key(vehicle) references vehicles(id)
);