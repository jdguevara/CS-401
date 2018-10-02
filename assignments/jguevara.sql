use `heroku_e6a4fd1833894b2`;

create table Users (  
	ID int auto_increment,
	username varchar(15) NOT NULL,
	email varchar(256) NOT NULL,
	password varchar(64) NOT NULL,
	access integer(1),
    primary key (ID)
);

create table Project (
	ID int auto_increment,
    project_ID int,
	project_name varchar(15) NOT NULL,
	date_modified date NOT NULL,
	collaborators varchar(256) NOT NULL,
	program_language varchar(30) NOT NULL,
    primary key (ID),
    foreign key (project_ID) references Users(ID)
);


create table Forums (
	ID int auto_increment,
    thread_ID int,
	thread_name varchar(30) NOT NULL,
    original_poster varchar(15) NOT NULL,
    date_posted date NOT NULL,
    recent_contributor varchar(15) NOT NULL,
    primary key (ID),
    foreign key (thread_ID) references Users(ID)
);
    

