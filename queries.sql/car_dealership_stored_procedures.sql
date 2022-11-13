CREATE PROCEDURE commission(
	total_cost INTEGER,
	commission_amount DECIMAL
)
LANGUAGE plpgsql
AS $$
BEGIN
	-- Add late fee to customer payment amount
	UPDATE salesperson
	SET total_cost = total_cost * commission_amount
	WHERE total_cost = sale_invoice;
	
	-- Commit the above statement inside of a transaction
	COMMIT;
	
END;
$$

CREATE PROCEDURE tax(
	total_cost INTEGER,
	tax DECIMAL
)
LANGUAGE plpgsql
AS $$
BEGIN
	-- Add late fee to customer payment amount
	UPDATE sale_invoice
	SET total_cost = total_cost * tax
	WHERE total_cost = sale_invoice;
	
	-- Commit the above statement inside of a transaction
	COMMIT;
	
END;
$$
