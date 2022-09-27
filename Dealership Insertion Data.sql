-- function to make car
create or replace function add_car(_car_id INTEGER,_make VARCHAR, _model VARCHAR, _serial_number INTEGER)
returns void
as $MAIN$
begin 
	insert into car (car_id, make, model, serial_number)
	values (_car_id,_make, _model,_serial_number);
end
$MAIN$
language plpgsql;

-- Add car 1 and 2
select add_car(1, 'Ford', 'Explorer', 1111);
select add_car(2, 'Hyundai', 'Santa Fe XLT', 2222);
select * from car where car_id < 5;

--function to make customers
create or replace function add_customer(_customer_id INTEGER,_first_name VARCHAR, _last_name VARCHAR)
returns void
as $MAIN$
begin 
	insert into Customer(customer_id,first_name,last_name)
	values (_customer_id,_first_name,_last_name);
end
$MAIN$
language plpgsql;

-- Add customer 1 and 2
select add_customer(1, 'Adam', 'Atoms');
select add_customer(2, 'Beatrice', 'Baumgardner');
select * from Customer where customer_id < 5;

-- function to make mechanics
create or replace function add_mechanic(_mechanic_id INTEGER,_first_name VARCHAR, _last_name VARCHAR)
returns void
as $MAIN$
begin 
	insert into Mechanic(mechanic_id,first_name,last_name)
	values (_mechanic_id,_first_name,_last_name);
end
$MAIN$
language plpgsql;

-- Add mechanic 1 and 2
select add_mechanic(1, 'Zachary', 'Zip');
select add_mechanic(2, 'Xavier', 'Xenos');
select * from Mechanic where mechanic_id < 5;

-- function to make parts
create or replace function add_part(_part_id INTEGER,_part_description VARCHAR, _part_price numeric(4,2))
returns void
as $MAIN$
begin 
	insert into part(part_id,part_description,part_price)
	values (_part_id,_part_description,_part_price);
end
$MAIN$
language plpgsql;

-- Add part 1 and 2
select add_part(1, 'Spark Plug', 30.85);
select add_part(2, 'Tire', 90.50);
select * from part where part_id < 5;

-- Function to make salespeople
create or replace function add_employee(_salesperson_id INTEGER,_first_name VARCHAR, _last_name VARCHAR)
returns void
as $MAIN$
begin 
	insert into salesperson(salesperson_id,first_name,last_name)
	values (_salesperson_id,_first_name,_last_name);
end
$MAIN$
language plpgsql;

-- Add employee 1 and 2
select add_employee(1, 'Freddy', 'Jones');
select add_employee(2, 'Scooby', 'Doo');
select * from salesperson where salesperson_id < 5;

-- Add services function
create or replace function add_service(_service_id INTEGER,_service_description VARCHAR, _service_price numeric(4,2))
returns void
as $MAIN$
begin 
	insert into service(service_id,service_description,service_price)
	values (_service_id,_service_description,_service_price);
end
$MAIN$
language plpgsql;

-- Add part 1 and 2
select add_service(1, 'Brake flush', 80.55);
select add_service(2, 'Tire Rotation', 30.37);
select * from service where service_id < 5;

-- Add info into invoice 
insert into invoice (
	invoice_id,
	salesperson_id,
	car_id,
	customer_id
) values (
	1,
	1,
	1,
	1
);

insert into invoice (
	invoice_id,
	salesperson_id,
	car_id,
	customer_id
) values (
	2,
	2,
	2,
	2
);

-- add info into repair
insert into repair (
	repair_id,
	car_id,
	mechanic_id,
	part_id,
	subtotal,
	service_id
) values (
	1,
	1,
	1,
	NULL,
	80.55,
	1
);

insert into repair (
	repair_id,
	car_id,
	mechanic_id,
	part_id,
	subtotal,
	service_id
) values (
	2,
	2,
	2,
	2,
	90.50,
	NULL
);
