CREATE DATABASE homes;

CREATE TABLE home
(
  home_id int NOT NULL AUTO_INCREMENT,
  name text,
  type text,
  address varchar(1000),
  number_of_beds int,
  price int,
  furnished tinyint,
  view_link text,
);

INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('2', 'Apartment Alfa', 'apartment', '1234 someplace NW, apt 212, Washington DC, 20016', '1', '1200', '1', './apartments/apartment_alfa/apartmentAlfa.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('2', 'Apartment Bravo', 'apartment', '3140 someplace NW, apt 662, Washington DC, 20016', '2', '1900', '1', './apartments/apartment_bravo/apartmentBravo.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('3', 'Apartment Charlie', 'apartment', '6693 someplace NW, apt 352, Washington DC, 20016', '2', '1600', '0', './apartments/apartment_charlie/apartmentCharlie.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('4', 'Apartment Delta', 'apartment', '5682 someplace NW, apt 113, Washington DC, 20016', '1', '1400', '0', './apartments/apartment_delta/apartmentDelta.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('5', 'Apartment Echo', 'apartment', '1123 someplace NW, apt 400, Washington DC, 20016', '2', '1590', '0', './apartments/apartment_echo/apartmentEcho.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('6', 'Apartment Foxtrot', 'apartment', '4321 someplace NW, apt 555, Washington DC, 20016', '1', '2000', '1', './apartments/apartment_foxtrot/apartmentFoxtrot.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('7', 'Apartment Golf', 'apartment', '1100 someplace NW, apt 400, Washington DC, 20016', '0', '900', '0', './apartments/apartment_golf/apartmentGolf.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('8', 'Apartment Hotel', 'apartment', '5300 someplace NW, apt 360, Washington DC, 20016', '0', '1000', '0', './apartments/apartment_hotel/apartmentHotel.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('9', 'Apartment India', 'apartment', '4210 someplace NW, apt 215, Washington DC, 20016', '3', '2300', '1', './apartments/apartment_india/apartmentIndia.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('10', 'Apartment Juliett', 'apartment', '2210 someplace NW, apt 233, Washington DC, 20016', '3', '3000', '1', './apartments/apartment_juliett/apartmentJuliett.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('11', 'House Alfa', 'House', '1234 someotherplace ct, Washington DC, 20007', '3', '2400', '0', './houses/house_alfa/houseAlfa.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('12', 'House Bravo', 'House', '5632 someotherplace ct, Washington DC, 20007', '3', '2100', '1', './houses/house_bravo/houseBravo.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('13', 'House Charlie', 'House', '2291 someotherplace ct, Washington DC, 20007', '4', '3000', '0', './houses/house_charlie/houseCharlie.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('14', 'House Delta', 'House', '2560 someotherplace ct, Washington DC, 20007', '5', '6000', '1', './houses/house_delta/houseDelta.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('15', 'House Echo', 'House', '2311 someotherplace ct, Washington DC, 20007', '4', '4500', '1', './houses/house_echo/houseEcho.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('16', 'House Foxtrot', 'House', '1963 someotherplace ct, Washington DC, 20007', '5', '5000', '0', './houses/house_foxtrot/houseFoxtrot.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('17', 'House Golf', 'House', '4211 someotherplace ct, Washington DC, 20007', '1', '1300', '0', './houses/house_golf/houseGolf.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('18', 'House Hotel', 'House', '5789 someotherplace ct, Washington DC, 20007', '2', '2500', '0', './houses/house_hotel/houseHotel.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('19', 'House India', 'House', '4101 someotherplace ct, Washington DC, 20007', '3', '3490', '0', './houses/house_india/houseIndia.html');
INSERT INTO `home` (`home_id`, `name`, `type`, `address`, `number_of_beds`, `price`, `furnished`, `view_link`) VALUES ('20', 'House Juliett', 'House', '1133 someotherplace ct, Washington DC, 20007', '4', '4230', '0', './houses/house_juliette/houseJuliett.html');
