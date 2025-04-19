#09/09/2024 MySQL Assignment 2 Wesley Thuto Sephai

#1.

CREATE TABLE Voter_List (
Voter_id varchar(35) PRIMARY KEY,
Voter_Name varchar(50) NOT NULL,
Voter_Age INT,
Voter_Email varchar(30) UNIQUE,
CHECK (Voter_Age > 18)
);

#2.

INSERT INTO Voter_List (Voter_id, Voter_Name, Voter_Age, Voter_Email) values
('V001', 'Wesley Wes', 25, 'twsephai@gmail.com'),
('V002', 'Thabang Malph', 28, 'tmalapane@gmail.com'),
('V003', 'Lesley Seph', 24, 'tplesley@gmail.com'),
('V004', 'Fredrick Jhon', 35, 'fredricMotswa@gmail.com'),
('V005', 'Khumo Angel', 22, 'otshepkhumo@gmail.com');

#3.

SELECT * FROM Voter_List;

#4. 

CREATE TABLE Voter_Constituency (
V_id varchar(35),
Voter_Constituency varchar(35),
foreign key (V_id) REFERENCES Voter_List(Voter_id)
);

#5.
INSERT INTO Voter_Constituency (V_id, Voter_Constituency) VALUES
('V001', 'Constituency A'),
('V002', 'Constituency B'),
('V003', 'Constituency C'),
('V004', 'Constituency D'),
('V005', 'Constituency E');