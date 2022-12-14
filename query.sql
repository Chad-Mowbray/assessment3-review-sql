-- -- Total users
-- select count(*) as total_users from BlogUsers;


--For all users who have written a post, show total number of posts and user email
-- -- Post, BlogUsers -- Join on BlogUsers.id = Post.user_id
-- select email, count(*) from Posts
--   join BlogUsers on Posts.user_id = BlogUsers.id
--   group by email;

-- -- Get all the users that only had one blog post
-- select email, count(*) from Posts
--   join BlogUsers on Posts.user_id = BlogUsers.id
--   group by email
--   having count(*) = 1;

-- -- Get the user that has the most posts
-- -- need Posts and BlogUsers join 
-- select email, count(*) from BlogUsers
--   join Posts
--     on BlogUsers.id = Posts.user_id
--   group by email
--   order by count(*) desc
--   limit 1;

-- -- Get the user that has the most posts (alternate)
select email, count(*) as total from BlogUsers
  join Posts
    on BlogUsers.id = Posts.user_id
  group by email
  having count(*) = (
    select max(total) from (
      select email, count(*) as total from BlogUsers
        join Posts
          on BlogUsers.id = Posts.user_id
        group by email
    ) as x
  );
