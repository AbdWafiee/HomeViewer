CREATE DATABASE clients;

CREATE TABLE client
(
  user_id int NOT NULL AUTO_INCREMENT,
  first_name text,
  last_name text,
  email varchar(100),
  password varchar(1000),
  address varchar(1000),
  home_preference text,
);

INSERT INTO `client` (`user_id`, `first_name`, `last_name`, `email`, `password`, `address`, `home_preference`) VALUES ('1', 'Wafiee', 'Wahab', 'myemail@gmail.com', '1234', '3620 anotherplace dr, Washington DC, 20008', 'apartment');
INSERT INTO `client` (`user_id`, `first_name`, `last_name`, `email`, `password`, `address`, `home_preference`) VALUES ('2', 'Luke', 'Skywalker', 'ajedi@jedimail.com', '1234', '1000 middleofnowhere cliff, Nowhere, 10001', 'house');
