#Assume you are given the tables below about Facebook pages and page likes. 
#Write a query to return the page IDs of all the Facebook pages that don't have any likes. 
#The output should be in ascending order.


# we need page_id which are not liked by any user 


# 1st solution using left join 
# use left join & then take those records which are having page_id as null in right table (page_like)
select page.page_id from page 
left join page_like as likes on page.page_id = likes.page_id
where likes.page_id is null order by page.page_id asc;

# 2nd solution using NOT EXISTS clause --> This is more efficient than left join
select page_id from page where 
NOT EXISTS (select 1 from page_like as likes where likes.page_id = page.page_id);