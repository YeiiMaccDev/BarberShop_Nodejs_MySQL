DROP DATABASE IF EXISTS barbershop_db;

CREATE DATABASE IF NOT EXISTS barbershop_db;

USE barbershop_db;

-- TABLE USER
-- all pasword wil be encrypted using SHA2
CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  fullname VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(60) NOT NULL,
  rol VARCHAR(20) NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) AUTO_INCREMENT=2;


  -- VALUES ('admin@gmail.com', 'admin123', 'Admin Supremo', '1'),
  --        ('cliente@gmail.com', 'cliente123', 'Cliente 123', '2');
INSERT INTO users (email, password, fullname, rol) 
  VALUES ('admin@gmail.com', '$2a$10$y758UNOSWx.LfpL24aoMnODnvQDYBF5aP9dMVUg3e/L8l0tAQPPmC', 'Admin Supremo', '1'),
      ('cliente@gmail.com', '$2a$10$Hnd6I7CNTq3pFhc5gT7F..Mzvey.7Q62/oxGk6Cb3Uj6SbVzplzPq', 'Cliente 123', '2');




-- RESERVATIONS TABLE
CREATE TABLE reservations (
  id INT NOT NULL AUTO_INCREMENT,
  date_r DATE NOT NULL,
  time_r TIME NOT NULL,
  user_id INT,
  created_at timestamp NOT NULL DEFAULT current_timestamp,
  CONSTRAINT fk_user_reservations FOREIGN KEY(user_id) REFERENCES users(id),
  PRIMARY KEY (id)
);

-- LINKS TABLE
CREATE TABLE links (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(150) NOT NULL,
  url VARCHAR(255) NOT NULL,
  description TEXT,
  user_id INT,
  created_at timestamp NOT NULL DEFAULT current_timestamp,
  CONSTRAINT fk_user_links FOREIGN KEY(user_id) REFERENCES users(id),
  PRIMARY KEY (id)
);


-- SERVICES TABLE
CREATE TABLE services (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(150) NOT NULL,
  description VARCHAR(1000) NOT NULL,
  price INT NOT NULL,
  created_at timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (id)
);

INSERT INTO services (title, description, price) 
  VALUES ('Keratina Completa', 'Si tu cabello es poco manejable y quieres tener un estilo más encantador y sofisticado, puedes realizarte un tratamiento con keratrina que alisará tu cabello y lo dejará listo para adaptarse a tu gusto y tu estilo.', 120000),
  ('Keratina por Mechon', 'Si te parece demasiado alizar todo tu cabello, puedes recibir el tratamiento por mechón, alisando solo la sección de cabello que prefieras.', 40000),
  ('Corte Tradicional', 'Si eres un hombre con estilo clásico, este corte es para ti; incluye shampoo (con suave aroma masculino) y masaje capilar. Mientras lo disfrutas puedes relajarte con una bebida (cerveza).', 18000),
  ('Corte Premium', 'Además de recibir un corte sofisticado o a tu gusto, también disfrutarás de una experiencia facial creada para los hombres MadMen. Incluye: exfoliación refrescante de café y menta, una mascarilla que limpia tus poros y elimina puntos negros, y una limpieza facial. Finaliza tu experiencia con shampoo y masaje, mientras disfrutas de una bebida..', 38000),
  ('Trimming de Barba o Razurada', 'Esta es la opción perfecta para ti, si deseas lucir pulcro, fresco y despejado. Con el trimming de barba retiramos todo el bello facial, usando una  espuma mentolada que te brindará frescura. Luego, para tu relajación, usamos unas toallas calientes con aceites naturales que humectarán tu rostro. Finalizaremos tu experiencia con la aplicación de una toalla fría para cerrar los poros y un masaje relajante.', 28000),
  ('Trimming de Barba o Razurada Premium', 'Esta trimming de barba pule y arregla los contornos de la barba a tu gusto, para que mantengas esa apariencia masculina que tanto llama la atención. El rasurado y marcaje se harán con una espuma mentolada, para darte una sensación de frescura. Luego, usaremos toallas calientes para abrir tus poros y te aplicaremos aceites naturales para humectar tu piel. Finalizaremos tu experiencia con una toalla fría refrescante que cerrará tus poros, un masaje que reactivará la circulación de la piel, una exfoliación de café y menta, una mascarilla para eliminar los puntos negros y una limpieza facial.', 48000);
