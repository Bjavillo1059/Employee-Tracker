USE tracker_db;

INSERT INTO department (id, name)
VALUES 
    (001, "Management"),
    (002, "Engineering"),
    (003, "Development"),
    (004, "Design"),
    (005, "Marketing");

INSERT INTO role (id, title, salary, department_id)
VALUES
    (001, "Manager", 35.00, 001),
    (002, "Engineer", 27.00, 002),
    (003, "Developer", 27.00, 003),
    (004, "Designer", 21.00, 004),
    (005, "Seller", 21.00, 005);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES
    (001, "Brandon", "Javillo", 001, NULL),
    (002, "Cherie", "Javillo", 004, 001),
    (003, "Maia", "Javillo", 002, 001),
    (004, "Micah", "Javillo", 003, 001),
    (005, "Joey", "Javillo", 005, 001);

SELECT * FROM department;