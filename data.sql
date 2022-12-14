
insert into BlogUsers (email) values ('bob@email.com'), ('shannon@email.org'), ('Tyler@free.biz');

insert into Posts(title, user_id) values ('Post 1', 1), ('Post 2', 2), ('Post 3', 3), ('Post 4', 1),('Post 5', 1);

insert into Comments(content, user_id, post_id) values ('That sucks', 1,2), ('That is great', 2, 4),  ('That is bad', 3, 4),  ('That is OK', 3, 1),  ('That is not bad', 3, 2),  ('That is terrible', 3, 4),  ('That is awesome', 2, 4),  ('That is horrendus', 1, 3);

insert into Likes(user_id, post_id, comment_id) values (1,2,null), (1,3,null), (1,null,2),(3,null,5),(2,null,2),(2,2,null);