drop table if exists BlogUsers cascade;
drop table if exists Comments cascade;
drop table if exists Likes cascade;
drop table if exists Posts cascade;


create table BlogUsers(
  id serial PRIMARY KEY,
  email varchar
);

create table Posts(
  id serial primary key,
  title varchar,
  user_id int,
  FOREIGN key (user_id) REFERENCES BlogUsers (id)
);

create table Comments(
  id serial primary key,
  content varchar,
  user_id int,
  post_id int,
  foreign key (user_id) references BlogUsers (id),
  foreign key (post_id) references Posts (id)
);

create table Likes(
  id serial primary key,
  user_id int,
  post_id int,
  comment_id int,
  foreign key (user_id) references BlogUsers (id),
  foreign key (user_id) references BlogUsers (id),
  foreign key (comment_id) references Comments (id)
);
