CREATE TABLE Saler (
    sal_id INT PRIMARY KEY,
    navn VARCHAR(255),
    kapasitet INT
);

CREATE TABLE Stoler (
    stol_id INT PRIMARY KEY,
    sal_id INT,
    radnr INT,
    stolnr INT,
    omrade VARCHAR(255),
    FOREIGN KEY (sal_id) REFERENCES Saler(sal_id)
);

CREATE TABLE Teaterstykker (
    stykke_id INT PRIMARY KEY,
    navn VARCHAR(255),
    sal_id INT,
    FOREIGN KEY (sal_id) REFERENCES Saler(sal_id)
);

CREATE TABLE Forestillinger (
    forestilling_id INT PRIMARY KEY,
    stykke_id INT,
    dato DATETIME,
    FOREIGN KEY (stykke_id) REFERENCES Teaterstykker(stykke_id)
);

CREATE TABLE Billetter (
    billett_id INT PRIMARY KEY,
    forestilling_id INT,
    kunde_id INT,
    stol_id INT,
    prisgruppe VARCHAR(255),
    pris INT,
    FOREIGN KEY (forestilling_id) REFERENCES Forestillinger(forestilling_id),
    FOREIGN KEY (kunde_id) REFERENCES Kunder(kunde_id),
    FOREIGN KEY (stol_id) REFERENCES Stoler(stol_id)
);

CREATE TABLE Kunder (
    kunde_id INT PRIMARY KEY,
    mobilnummer VARCHAR(20),
    navn VARCHAR(255),
    adresse VARCHAR(255)
);

CREATE TABLE Roller (
    rolle_id INT PRIMARY KEY,
    navn VARCHAR(255),
    stykke_id INT,
    FOREIGN KEY (stykke_id) REFERENCES Teaterstykker(stykke_id)
);

CREATE TABLE Skuespillere (
    skuespiller_id INT PRIMARY KEY,
    navn VARCHAR(255)
);

CREATE TABLE RolleSkuespiller (
    rolle_id INT,
    skuespiller_id INT,
    FOREIGN KEY (rolle_id) REFERENCES Roller(rolle_id),
    FOREIGN KEY (skuespiller_id) REFERENCES Skuespillere(skuespiller_id)
);

CREATE TABLE Medvirkende (
    medvirkende_id INT PRIMARY KEY,
    navn VARCHAR(255),
    rolle VARCHAR(255),
    epost VARCHAR(255),
    ansattstatus VARCHAR(50),
    stykke_id INT,
    FOREIGN KEY (stykke_id) REFERENCES Teaterstykker(stykke_id)
);
