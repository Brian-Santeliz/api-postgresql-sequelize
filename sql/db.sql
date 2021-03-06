-- table projects
CREATE TABLE IF NOT EXISTS projects(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL CHECK (name <> ''),
    priority INTEGER NOT NULL,
    description TEXT,
    deliverydate DATE NOT NULL 
);
-- table tasks
CREATE TABLE IF NOT EXISTS tasks(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL CHECK (name <> ''),
    done BOOLEAN,
    projectid INTEGER REFERENCES projects(id)
);
-- Data to the projects
INSERT INTO projects(name, priority, description, deliverydate)
    VALUES ('Hacer una app', 1, 'Hacer una app con JavaScript', '2019-09-10');

INSERT INTO projects(name, priority, description, deliverydate)
    VALUES ('Desarrolar un juego', 1, 'Crear un juego en Unity', '2019-05-11');

INSERT INTO projects(name, priority, description, deliverydate)
    VALUES ('Crear un CRUD', 2, 'Con mysql y PHP', '2019-08-11');
    

INSERT INTO projects(name, priority, description, deliverydate)
    VALUES ('Hacer una app Web', 2, 'Descargar Flutter', '2019-09-11');

-- Data to the tasks
INSERT INTO tasks(name, done, projectid)
    VALUES('Decargar Vuejs', false, 1);

INSERT INTO tasks(name, done, projectid)
    VALUES('Aprender Unity', false, 2);

INSERT INTO tasks(name, done, projectid)
    VALUES('Instalar PHPMyAdmin', false, 3);

INSERT INTO tasks(name, done, projectid)
    VALUES('Aprender Dart', false, 4);