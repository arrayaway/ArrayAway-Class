CREATE TABLE Users (
    ID int NOT NULL AUTO_INCREMENT,
    Username varchar(255) NOT NULL,
    CoolLevel varchar(255),
    HomePlanet varchar(255),
    PRIMARY KEY (ID)
);

CREATE TABLE UserPets (
    PetID int NOT NULL AUTO_INCREMENT,
    UserID int NOT NULL,
    AnimalType varchar(255),
    Fluffiness varchar(255),
    PRIMARY KEY (PetID),
    FOREIGN KEY (UserId) REFERENCES Users(ID)
);

INSERT INTO Users (Username, CoolLevel, HomePlanet) VALUES ('Emery', 'Super Power', 'Earth');
INSERT INTO Users (Username, CoolLevel, HomePlanet) VALUES ('Paige', 'Incredible', 'Earth');
INSERT INTO Users (Username, CoolLevel, HomePlanet) VALUES ('Reagan', 'Eggsellant', 'Earth');
INSERT INTO Users (Username, CoolLevel, HomePlanet) VALUES ('Olivia', 'Very high cool', 'Earth');
INSERT INTO Users (Username, CoolLevel, HomePlanet) VALUES ('Madeline', 'Top cool level', 'Earth');
INSERT INTO Users (Username, CoolLevel, HomePlanet) VALUES ('Jessica', 'Awesome sauce', 'Earth');
INSERT INTO Users (Username, CoolLevel, HomePlanet) VALUES ('Nathan', 'Ice Ice', 'Earth');

SELECT @emery := ID FROM Users WHERE Username = 'Emery';
SELECT @paige := ID FROM Users WHERE Username = 'Paige';
SELECT @reagan := ID FROM Users WHERE Username = 'Reagan';
SELECT @olivia := ID FROM Users WHERE Username = 'Olivia';
SELECT @madeline := ID FROM Users WHERE Username = 'Madeline';
SELECT @jessica := ID FROM Users WHERE Username = 'Jessica';
SELECT @nathan := ID FROM Users WHERE Username = 'Nathan';

INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@emery, 'Dog', 'Floofy');
INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@emery, 'Dog', 'Floofy');
INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@emery, 'Dog', 'Floofy');

INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@jessica, 'Tiger', 'Floofy Once');
INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@jessica, 'Lion', 'Floofy Once');

INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@madeline, 'Dragon', 'Floofy Boi');
INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@madeline, 'Lizard', 'Slime');
INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@madeline, 'Snake', 'Nah Fam');
INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@madeline, 'Destroyer', 'Incredibly');
INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@madeline, 'Kitty Cat', 'Floofy Max');

INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@paige, 'Cat', 'Floofy');

INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@reagan, 'Dog', 'Floofy');

INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@nathan, 'Parrot', 'Feathery');
INSERT INTO UserPets (UserId, AnimalType, Fluffiness) VALUES (@nathan, 'Elephant', 'No.');
