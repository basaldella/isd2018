/* Delete the tables if they already exist */
drop table if exists Authorship;
drop table if exists Books;
drop table if exists Authors;


/* Create the schema for our tables */
create table Authors(
	author_id int auto_increment,
	first_name varchar(255), 
	last_name varchar(255), 
	primary key (author_id)
	);

create table Books(
	book_id int auto_increment,
	book_title varchar(255), 
	pub_month int,
	pub_year int,
	editor int,
	primary key(book_id),
	foreign key (editor) references Authors(author_id)
	);

create table Authorship(
	author_id int,
	book_id int,
	foreign key (author_id) references Authors(author_id),
	foreign key (book_id) references Books(book_id),
	primary key (author_id, book_id)
	);
	
insert into Authors
	(author_id,first_name, last_name) values
	(1,'Dimitri','Kent'),
	(2,'Kalem','Norman'),
	(3,'Marcel','Stout'),
	(4,'Rohit','Clark'),
	(5,'Sylvia','Smith'),
	(6,'Mikayla','Kirby'),
	(7,'Edward','Mckinney'),
	(8,'Gus','Crawford'),
	(9,'Anabella','Petty'),
	(10,'Ken','Wong');

insert into Books
	(book_id,book_title,pub_month,pub_year,editor) values
	(1,'warriors without honor',8,2015,1),
	(2,'noises at the graveyard',5,1956,7),
	(3,'academics of tomorrow',7,1956,7),
	(4,'amphibians in your garden',8,1950,2),
	(5,'dancing in the elements',6,2011,1),
	(6,'butterflies and trueloves',4,1990,3);
	
insert into Authorship 
	(author_id,book_id) values
	(10,1),
	(8,2),
	(9,3),
	(7,3),
	(7,4),
	(5,5),
	(1,6),
	(4,6);
	
