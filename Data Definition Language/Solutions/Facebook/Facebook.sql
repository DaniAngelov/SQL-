-- github.com/DaniAngelov

2.

а)

create table Users
(
	id int primary key identity,
	email varchar(20),
	_password varchar(25),
	registrationDate date
)

create table Friends
(
	id_user int not null

	constraint user_friends_fk foreign key(id_user) references Users(id)
)


create table Friends
(
	UserID int REFERENCES Users(id) NOT NULL,
    FriendID int REFERENCES Users(id) NOT NULL,
    PRIMARY KEY (UserID, FriendID)
	
)

create table Walls
(
	UserID int references users(id) not null,
	UserMessagingID int references users(id) not null,
	Primary key(UserID,UserMessagingID),
	messageOfUser varchar(100),
	dateWritten date
)



create table Groups
(
	group_id int primary key not null identity,
	group_name varchar(20),
	group_description varchar(200) default ''
)



create table GroupMembers
(
	GroupID int references Groups(group_id) not null,
	UserID int references Users(id) not null,
	Primary key(GroupID,UserID)
)

б)
Users:
insert into Users(email,_password,registrationDate) Values('haha@abv.bg', 'lololo','1949-09-29')
insert into Users(email,_password,registrationDate) Values( 'jBells@gmail.com', 'jbellzzz','2004-02-13')
insert into Users(email,_password,registrationDate) Values( 'Carlosx@hotmail.com', 'carrrllozz','2012-01-27')

Friends:
insert into friends(UserID,FriendID) Values(1,2)
insert into friends(UserID,FriendID) Values(1,3)

Walls:
insert into walls(UserId,UserMessagingID,messageOfUser,dateWritten) values(1,3,'Hey,man! Awesome ! ','1949-09-20')
insert into walls(UserId,UserMessagingID,messageOfUser,dateWritten) values(2,3,'GGWP! You WON  ! ','1977-12-01')
insert into walls(UserId,UserMessagingID,messageOfUser,dateWritten) values(1,2,'HOLY SHIT ! DID YOU SAW THAT?? ','1912-03-06')

Groups:
insert into groups(group_name,group_description) values ('Nai-luditeee','Welcome to hell')
insert into groups(group_name,group_description) values ('Metal fans','IRON MAIDEN BABYYYYY')

Group Members:
insert into GroupMembers(GroupID,UserID) Values(1,1)
insert into GroupMembers(GroupID,UserID) Values(1,2)
insert into GroupMembers(GroupID,UserID) Values(2,2)
insert into GroupMembers(GroupID,UserID) Values(2,3)
