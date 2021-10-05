CREATE DATABASE part4_database

USE part4_database

CREATE TABLE Advertisers(
    ID INT                      NOT NULL,
    AdvertiserName VARCHAR(100) NOT NULL,
    Clicks INT                  DEFAULT(0),
    Views INT                   DEFAULT(0),
    PRIMARY KEY(ID)
)

CREATE TABLE Ad(
    ID INT                      NOT NULL,
    AdvertiserId INT FOREIGN KEY REFERENCES Advertisers(ID),
    Title VARCHAR(500)          NOT NULL,
    ImgUrl VARCHAR(1000)        NOT NULL,
    Link VARCHAR(1000)          NOT NULL,
    Clicks INT                  DEFAULT(0),
    Views INT                   DEFAULT(0),
    PRIMARY KEY (ID)
)
;