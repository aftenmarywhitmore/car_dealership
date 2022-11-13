--Customer Function:
CREATE FUNCTION new_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _last_update TIMESTAMP WITHOUT TIME ZONE)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO customer(customer_id, first_name, last_name, last_update)
	VALUES(_customer_id, _first_name, _last_name, _last_update);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT *
FROM customer

--Salesperson Function:
CREATE FUNCTION add_salesperson(_salesman_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _last_update TIMESTAMP WITHOUT TIME ZONE)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO salesperson(salesman_id, first_name, last_name, last_update)
	VALUES(_salesman_id, _first_name, _last_name, _last_update);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT *
FROM salesperson

--Mechanic Function:
CREATE FUNCTION add_mechanic(_mechanic_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _last_update TIMESTAMP WITHOUT TIME ZONE)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO mechanic(mechanic_id, first_name, last_name, last_update)
	VALUES(_mechanic_id, _first_name, _last_name, _last_update);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT *
FROM mechanic

--Dealership Function:
CREATE FUNCTION add_dealership(_dealership_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _last_update TIMESTAMP WITHOUT TIME ZONE)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO dealership(dealership_id, first_name, last_name, last_update)
	VALUES(_dealership_id, _first_name, _last_name, _last_update);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT *
FROM dealership

--Car Function:
CREATE FUNCTION add_car(_serial_no_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _last_update TIMESTAMP WITHOUT TIME ZONE)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO car(serial_no_id, first_name, last_name, last_update)
	VALUES(_serial_no_id, _first_name, _last_name, _last_update);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT *
FROM car

--Parts Function:
CREATE FUNCTION add_part(_part_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _last_update TIMESTAMP WITHOUT TIME ZONE)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO parts(part_id, first_name, last_name, last_update)
	VALUES(_part_id, _first_name, _last_name, _last_update);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT *
FROM parts

--Payment Function:
CREATE FUNCTION add_payment(_payment_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _last_update TIMESTAMP WITHOUT TIME ZONE)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO payment(payment_id, first_name, last_name, last_update)
	VALUES(_payment_id, _first_name, _last_name, _last_update);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT *
FROM payment

--Sale Invoice Function:
CREATE FUNCTION add_invoice(_sale_invoice_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _last_update TIMESTAMP WITHOUT TIME ZONE)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO sale_invoice(sale_invoice_id, first_name, last_name, last_update)
	VALUES(_sale_invoice_id, _first_name, _last_name, _last_update);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT *
FROM sale_invoice

--Service Function:
CREATE FUNCTION add_service(_service_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _last_update TIMESTAMP WITHOUT TIME ZONE)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO service(service_id, first_name, last_name, last_update)
	VALUES(_service_id, _first_name, _last_name, _last_update);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT *
FROM service

--Service History Function:
CREATE FUNCTION add_service_history(_service_history_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _last_update TIMESTAMP WITHOUT TIME ZONE)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO service_history(service_history_id, first_name, last_name, last_update)
	VALUES(_service_history_id, _first_name, _last_name, _last_update);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT *
FROM service_history

--Service Ticket Function:
CREATE FUNCTION add_service_ticket(_service_ticket_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _last_update TIMESTAMP WITHOUT TIME ZONE)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO service_ticket(service_ticket_id, first_name, last_name, last_update)
	VALUES(_service_ticket_id, _first_name, _last_name, _last_update);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT *
FROM service_ticket
