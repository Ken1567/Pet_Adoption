CREATE DATABASE adoption;

CREATE TABLE pets(
    pet_id serial PRIMARY KEY NOT NULL,
    pet_name VARCHAR(50) NOT NULL,
    pet_age VARCHAR(50) NOT NULL,
    pet_breed VARCHAR(50) NOT NULL,
    pet_type VARCHAR(50) NOT NULL
);

INSERT INTO pets(pet_id, pet_name, pet_age, pet_breed, pet_type)
VALUES (1, 'Pergie', '12 years old', 'American Bully', 'Dog');
INSERT INTO pets(pet_id, pet_name, pet_age, pet_breed, pet_type)
VALUES (2, 'Genalyn', '5 years old', 'Rottweiler', 'Dog');
INSERT INTO pets(pet_id, pet_name, pet_age, pet_breed, pet_type)
VALUES (3, 'Susan', '8 years old', 'Maine Coon', 'Cat');

CREATE TABLE customers(
    customer_id serial PRIMARY KEY NOT NULL,
    customer_name VARCHAR(50) NOT NULL,
    pet_id INT REFERENCES pets(pet_id)
);

INSERT INTO customers(customer_id, customer_name)
VALUES (1, 'Xhandrow');
INSERT INTO customers(customer_id, customer_name)
VALUES (2, 'Junah');
INSERT INTO customers(customer_id, customer_name)
VALUES (3, 'Juniper');


SELECT customers.*, pets.pet_name, pets.pet_age, pets.pet_breed, pets.pet_type
FROM  customers
INNER JOIN pets
ON customers.customer_id = pets.pet_id;
