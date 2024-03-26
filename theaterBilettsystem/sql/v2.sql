-- Kunder Table
CREATE TABLE Kunder (
    kunde_id INT PRIMARY KEY,
    mobilnummer VARCHAR(20),
    navn VARCHAR(255),
    adresse VARCHAR(255)
);

-- Stoler Table
CREATE TABLE Stoler (
    stol_id INT PRIMARY KEY,
    sal_id INT,
    radnr INT,
    stolenr INT,
    omrade VARCHAR(255),
    FOREIGN KEY (sal_id) REFERENCES Saler(sal_id)
);

-- Saler Table
CREATE TABLE Saler (
    sal_id INT PRIMARY KEY,
    navn VARCHAR(255),
    kapasitet INT
);

-- Teaterstykker Table
CREATE TABLE Teaterstykker (
    stykke_id INT PRIMARY KEY,
    navn VARCHAR(255)
);

-- Roller Table
CREATE TABLE Roller (
    rolle_id INT PRIMARY KEY,
    navn VARCHAR(255),
    FOREIGN KEY (stykke_id) REFERENCES Teaterstykker(stykke_id)
);

-- Skuespillere Table
CREATE TABLE Skuespillere (
    skuespiller_id INT PRIMARY KEY,
    navn VARCHAR(255)
);

-- Medvirkende Table
CREATE TABLE Medvirkende (
    medvirkende_id INT PRIMARY KEY,
    navn VARCHAR(255),
    rolle VARCHAR(255),
    epost VARCHAR(255),
    ansettstatus VARCHAR(60),
    FOREIGN KEY (stykke_id) REFERENCES Teaterstykker(stykke_id)
);

-- Forestillinger Table
CREATE TABLE Forestillinger (
    forestilling_id INT PRIMARY KEY,
    stykke_id INT,
    dato DATETIME,
    FOREIGN KEY (stykke_id) REFERENCES Teaterstykker(stykke_id)
);

-- Billetter Table
CREATE TABLE Billetter (
    billett_id INT PRIMARY KEY,
    kunde_id INT,
    forestilling_id INT,
    stol_id INT,
    prisgruppe VARCHAR(255),
    pris INT,
    FOREIGN KEY (forestilling_id) REFERENCES Forestillinger(forestilling_id),
    FOREIGN KEY (kunde_id) REFERENCES Kunder(kunde_id),
    FOREIGN KEY (stol_id) REFERENCES Stoler(stol_id)
);
ff