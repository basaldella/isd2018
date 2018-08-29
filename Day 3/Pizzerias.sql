/* Adapted from https://lagunita.stanford.edu/c4x/DB/RA/asset/opt-rel-algebra.html */

/* Delete the tables if they already exist */
drop table if exists Frequents;
drop table if exists Eats;
drop table if exists Serves;
drop table if exists Person;
drop table if exists Pizzeria;
drop table if exists Pizza;

/* Create the schema for our tables */
create table Person(
    name varchar(255), 
    age int, 
    gender varchar(255),
    city varchar(255),
    primary key (name)
    );
    
create table Pizzeria(
    name varchar(255),
    city varchar(255),
    street_name varchar(255),
    neighborhood varchar(255),
    primary key (name)
);

create table Pizza(
    name varchar(255),
    primary key (name)
);

create table Frequents(
    name varchar(255), 
    pizzeria varchar(255),
    foreign key (name) references Person(name),
    foreign key (pizzeria) references Pizzeria(name),
    PRIMARY KEY (name,pizzeria )
    );

create table Eats(
    name varchar(255), 
    pizza varchar(255),
    foreign key (name) references Person(name)    
    );

create table Serves(
	pizzeria varchar(255), 
    pizza varchar(255),
    price float,
    foreign key (pizzeria) references Pizzeria(name),
    primary key(pizzeria,pizza)    
    );

/* Populate the tables with our data */
insert into Person values('Amy', 16, 'female','Venezia');
insert into Person values('Ben', 21, 'male','Milano');
insert into Person values('Cal', 33, 'male','Venezia');
insert into Person values('Dan', 13, 'male','Venezia');
insert into Person values('Eli', 45, 'male','Venezia');
insert into Person values('Fay', 21, 'female','Milano');
insert into Person values('Gus', 24, 'male','Venezia');
insert into Person values('Hil', 30, 'female','Venezia');
insert into Person values('Ian', 18, 'male','Roma');

insert into Pizzeria values('Over the Toppings','Venezia','Ramo Corte Lezze','San Marco');
insert into Pizzeria values('Pizza Pals','Venezia','Piazza San Marco','San Marco');
insert into Pizzeria values('Pizzeria Napoli','Venezia','Calle Miani','San Polo');
insert into Pizzeria values('Il Tricolore','Venezia','Calle San Giacomo','Giudecca');
insert into Pizzeria values('Rossopomodoro','Milano','Via Fiori Oscuri','Brera');
insert into Pizzeria values('The Pizzageddon','Milano','Corso Sempione','Sempione');

insert into Pizza values
  ('Cheese'),('Margherita'),('Mushroom'),('Sausage'),('Marinara');

insert into Frequents values('Amy', 'Over the Toppings');
insert into Frequents values('Ben', 'Over the Toppings');
insert into Frequents values('Ben', 'Pizza Pals');
insert into Frequents values('Cal', 'Il Tricolore');
insert into Frequents values('Cal', 'Pizzeria Napoli');
insert into Frequents values('Dan', 'Il Tricolore');
insert into Frequents values('Dan', 'Pizzeria Napoli');
insert into Frequents values('Eli', 'Il Tricolore');
insert into Frequents values('Eli', 'Pizza Pals');
insert into Frequents values('Fay', 'The Pizzageddon');
insert into Frequents values('Fay', 'Rossopomodoro');
insert into Frequents values('Gus', 'Pizza Pals');
insert into Frequents values('Gus', 'Over the Toppings');
insert into Frequents values('Hil', 'The Pizzageddon');
insert into Frequents values('Hil', 'Il Tricolore');
insert into Frequents values('Hil', 'Over the Toppings');
insert into Frequents values('Ian', 'Pizzeria Napoli');
insert into Frequents values('Ian', 'Il Tricolore');
insert into Frequents values('Ian', 'The Pizzageddon');

insert into Eats values('Amy', 'Marinara');
insert into Eats values('Amy', 'Mushroom');
insert into Eats values('Ben', 'Marinara');
insert into Eats values('Ben', 'Cheese');
insert into Eats values('Cal', 'Margherita');
insert into Eats values('Dan', 'Marinara');
insert into Eats values('Dan', 'Cheese');
insert into Eats values('Dan', 'Sausage');
insert into Eats values('Dan', 'Margherita');
insert into Eats values('Dan', 'Mushroom');
insert into Eats values('Eli', 'Margherita');
insert into Eats values('Eli', 'Cheese');
insert into Eats values('Fay', 'Mushroom');
insert into Eats values('Gus', 'Mushroom');
insert into Eats values('Gus', 'Margherita');
insert into Eats values('Gus', 'Cheese');
insert into Eats values('Hil', 'Margherita');
insert into Eats values('Hil', 'Cheese');
insert into Eats values('Ian', 'Margherita');
insert into Eats values('Ian', 'Marinara');

insert into Serves values('Over the Toppings', 'Marinara', 7);
insert into Serves values('Over the Toppings', 'Sausage', 12);
insert into Serves values('Over the Toppings', 'Cheese', 9);
insert into Serves values('Over the Toppings', 'Margherita', 12);
insert into Serves values('Rossopomodoro', 'Marinara', 9.75);
insert into Serves values('Rossopomodoro', 'Sausage', 9.5);
insert into Serves values('Rossopomodoro', 'Cheese', 7);
insert into Serves values('Rossopomodoro', 'Mushroom', 9.25);
insert into Serves values('The Pizzageddon', 'Cheese', 9.75);
insert into Serves values('The Pizzageddon', 'Mushroom', 11);
insert into Serves values('Il Tricolore', 'Marinara', 8);
insert into Serves values('Il Tricolore', 'Cheese', 9.25);
insert into Serves values('Il Tricolore', 'Sausage', 9.75);
insert into Serves values('Pizzeria Napoli', 'Marinara', 8);
insert into Serves values('Pizzeria Napoli', 'Cheese', 7);
insert into Serves values('Pizzeria Napoli', 'Margherita', 8.5);
insert into Serves values('Pizza Pals', 'Cheese', 7.75);
insert into Serves values('Pizza Pals', 'Margherita', 8.5);
