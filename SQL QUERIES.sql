#To view all the data.
select * from video_game_sales;

#To describe all the columns and thier data type
describe video_game_sales;

#Genre and count of games in particular genre
select Genre,count(*) from video_game_sales
group by Genre order by count(*) desc;

#Year and count of games in paricular year
select year_of_release,count(*) from video_game_sales
group by Year_of_Release order by count(*) desc;

#To find the game with maximum North America sales
select max(NA_Sales) from video_game_sales;
select * from video_game_sales
where NA_Sales=41.36;

#To find the game with maximum Europe sales
select max(EU_Sales) from video_game_sales;
select name,Platform,Year_of_Release from video_game_sales
where EU_Sales=28.96;

#To find the game with maximum Global Sales
select max(Global_Sales) from video_game_sales;
select Name,platform,Year_of_Release from video_game_sales
where Global_Sales=82.53;

#To find the game with maximum Japan sales
select max(jp_sales) from video_game_sales;
select * from video_game_sales
where JP_Sales=6.5;
select max(critic_score) from video_game_sales;
select * from video_game_sales
where Critic_Score=98;
select max(user_score) from video_game_sales;
select * from video_game_sales
where User_Score=9.6;
select `Name`,platform,year_of_release from video_game_sales
where year_of_release=2015 and platform='PS3';
select * from video_game_sales 
where NA_Sales>10 and EU_Sales>10;

#Top 5 games according to the global sales
select Name,platform,Year_of_Release from video_game_sales
order by Global_Sales desc limit 5;