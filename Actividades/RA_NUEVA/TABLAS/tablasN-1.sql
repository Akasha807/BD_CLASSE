-- Base de datos N1
CREATE TABLE Alumne (
    dni_alumno CHAR(9) PRIMARY KEY,
    nom VARCHAR(10),
    edat INT
);

CREATE TABLE Professor (
    dni_profe CHAR(9) PRIMARY KEY,
    nom VARCHAR(10),
    edat INT,
    dni_alumno CHAR(9),  -- Nuevo campo para vincular profesor con su antiguo DNI de alumno
    CONSTRAINT fk_professor FOREIGN KEY (dni_alumno) REFERENCES Alumne(dni_alumno)
);

INSERT INTO Alumne VALUES ('B1111111B', 'Akasha', 18);
INSERT INTO Professor VALUES ('A1111111D', 'Jordi', 30, 'B1111111B');

SELECT professor.nom, alumne.nom 
FROM professor, alumne 
WHERE professor.dni_profe = alumne.dni_alumno;


select Professor.nom, Alumne.nom 
from Professor JOIN Alumne ON Professor.dni_alumno = Alumne.dni_alumno;

