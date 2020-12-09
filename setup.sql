CREATE DATABASE candies;

CREATE USER 'candies'@'localhost' IDENTIFIED BY 'C4nd13$!';

GRANT ALL ON candies.* TO 'candies'@'localhost';

USE candies;

CREATE TABLE manufacturers
(
  id INT
  auto_increment,
  name VARCHAR
  (255) NOT NULL,
  country VARCHAR
  (255),
  createdAt DATETIME DEFAULT NOW
  (),
  updatedAt DATETIME DEFAULT NOW
  () ON
  UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY
  (id)
);

  CREATE TABLE products
  (
    id INT
    auto_increment,
  name VARCHAR
    (255) NOT NULL,
  yearIntroduced DATE,
  manufacturerId INT,
  createdAt DATETIME DEFAULT NOW
    (),
  updatedAt DATETIME DEFAULT NOW
    () ON
    UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY
    (id),
  FOREIGN KEY
    (manufacturerId) REFERENCES manufacturers
    (id)
);

    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("August Storck KG", "DE");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("Cadbury", "UK");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("Ferrara Candy Company", "US");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("G.B. Ambrosoli", "IT");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("Impact Confections", "US");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("Mars", "US");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("Nabisco", "US");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("Necco", "US");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("Nestlé", "CH");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("Perfetti Van Melle", "IT");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("Just Born, Inc", "US");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("The Hershey Company", "US");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("The Wrigley Company", "US");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("Tootsie Roll Industries", "US");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("Topps", "US");
    INSERT INTO manufacturers
      (name, country)
    VALUES
      ("Zeta Espacial S.A.", "ES");

    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Mamba", "1953-01-01", 1);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Caramello", "1976-01-01", 2);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Creme Egg", "1923-01-01", 2);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Mini Eggs", "1967-01-01", 2);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Sour Patch Kids", "1985-01-01", 2);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Atomic FireBalls", "1954-01-01", 3);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Fruit Stripe", "1960-01-01", 3);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Laffy Taffy", "1970-01-01", 3);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Lemon Heads", "1962-01-01", 3);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Nerds", "1983-01-01", 3);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Now and Laters", "1962-01-01", 3);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Spree", "1965-01-01", 3);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Zots", "1968-01-01", 4);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Warheads", "1975-01-01", 5);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("3 Musketeers", "1932-01-01", 6);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Bounty", "1951-01-01", 6);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Almond Joy", "1946-01-01", 12);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Mounds", "1920-01-01", 12);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Life Savers", "1912-01-01", 6);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("M&M's", "1941-01-01", 6);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Maltesers", "1936-01-01", 6);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Milky Way", "1923-01-01", 6);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("PB Max", "1989-01-01", 6);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Snickers", "1930-01-01", 6);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Twix", "1967-01-01", 6);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Bonkers", "1985-01-01", 7);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Necco Wafers", "1847-01-01", 8);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Bit-O-Honey", "1924-01-01", 9);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Bottle Caps", "1972-01-01", 9);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Nestlé Crunch", "1928-01-01", 9);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Fun Dip", "1973-01-01", 9);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Kit Kat", "1935-01-01", 9);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Pixy Sticks", "1952-01-01", 9);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Rolo", "1937-01-01", 9);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Runts", "1982-01-01", 9);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Smarties", "1949-01-01", 9);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("AirHeads", "1985-01-01", 10);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Mike and Ikes", "1940-01-01", 11);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Peeps", "1953-01-01", 11);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Blow Pops", "1988-01-01", 14);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("5th Avenue", "1936-01-01", 12);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Ice Breakers", "1996-01-01", 12);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Jolly Ranchers", "1949-01-01", 12);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Hershey Kisses", "1907-01-01", 12);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Krackel", "1938-01-01", 12);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Mr. Goodbar", "1925-01-01", 12);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Reese's Peanut Butter Cups", "1928-01-01", 12);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Reese's Pieces", "1977-01-01", 12);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Skor", "1981-01-01", 12);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Twizzlers", "1929-01-01", 12);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Altoids", "1997-01-01", 13);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Big League Chew", "1980-01-01", 13);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Big Red", "1975-01-01", 13);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Bubble Tape", "1988-01-01", 13);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Doublemint", "1914-01-01", 13);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Eclipse", "2003-01-01", 13);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Extra", "1984-01-01", 13);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Hubba Bubba", "1979-01-01", 13);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Juicy Fruit", "1893-01-01", 13);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Life Savers", "1912-01-01", 13);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Orbit", "1899-01-01", 13);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Skittles", "1979-01-01", 13);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Starburst", "1960-01-01", 13);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Razzles", "1966-01-01", 14);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Tootsie Roll", "1896-01-01", 14);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Bazooka Joe", "1947-01-01", 15);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Push Pops", "1986-01-01", 15);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Ring Pops", "1978-01-01", 15);
    INSERT INTO products
      (name, yearIntroduced, manufacturerId)
    VALUES
      ("Pop Rocks", "1956-01-01", 16);


    SELECT *
    from products;

    SELECT *
    from manufacturers;