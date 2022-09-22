-- tạo SP có 1 tham số là IN
DELIMITER //
CREATE PROCEDURE getCusById(IN cusNum INT(11))
BEGIN
  SELECT * FROM customers WHERE customerNumber = cusNum;
END //
DELIMITER ;

call getCusById(175);

-- tạo SP có 2 tham số là IN OUT
DELIMITER //
CREATE PROCEDURE GetCustomersCountByCity( IN  in_city VARCHAR(50) , OUT total INT)
BEGIN
    SELECT COUNT(customerNumber)
    INTO total
    FROM customers
    WHERE city = in_city;
END//
DELIMITER ;

CALL GetCustomersCountByCity('NYC',@total);
SELECT @total;