-- Таблица сотрудников (МОЛ)
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    department VARCHAR(100)
);

-- Таблица оборудования
CREATE TABLE hardware (
    hardware_id SERIAL PRIMARY KEY,
    inventory_number VARCHAR(50) UNIQUE NOT NULL,
    model_name VARCHAR(150) NOT NULL,
    serial_number VARCHAR(100),
    employee_id INT REFERENCES employees(employee_id)
);