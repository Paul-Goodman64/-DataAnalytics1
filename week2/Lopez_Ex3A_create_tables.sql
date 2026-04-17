DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;
-- Create Client table
CREATE TABLE Client (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20),
    Location VARCHAR(150)
);

-- Create Dog table
CREATE TABLE Dog (
    DogID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT NOT NULL,
    DogBreed VARCHAR(50),
    Age INT,
    DogName VARCHAR(50),
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);

-- Create Service table
CREATE TABLE Service (
    ServiceID INT AUTO_INCREMENT PRIMARY KEY,
    DogID INT NOT NULL,
    Duration INT,                -- duration in minutes
    TimeOfService DATETIME,
    Cost DECIMAL(10,2),
    PaymentID INT,
    FOREIGN KEY (DogID) REFERENCES Dog(DogID)
);
