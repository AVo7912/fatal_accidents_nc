/*verify that data exists in the db*/
select *
from accidents2021
	
/* Find the total count of fatalities by weekday for 2021 */
Select weekday, count (number_of_deaths), day_of_week
from accidents2021
group by day_of_week, weekday
order by day_of_week

/* Find the total count of fatalities by weekday for 2020 */
Select weekday, count (number_of_deaths), day_of_week
from accidents2020
group by day_of_week, weekday
order by day_of_week

/* Find the total count of fatalities by weekday for 2019 */
Select weekday, count (number_of_deaths), day_of_week
from accidents2019
group by day_of_week, weekday
order by day_of_week

/* Find the fatality counts by month and weekday */
Select month, count (number_of_deaths), monthid, weekday
from accidents2021
group by monthid, month, weekday
order by monthid

/* Find the total count of fatalities by month for 2021 */
Select month, count (number_of_deaths), monthid
from accidents2021
group by monthid, month
order by monthid

/* Find the total count of fatalities by light condition for 2021 */
Select light_condition, count (number_of_deaths)
from accidents2021
group by light_condition
order by light_condition

/* Find the total count of fatalities by time of day for 2021 */
Select hour_range, count (number_of_deaths), hour
from accidents2021
group by hour, hour_range
order by hour

/* List the counties in the DB for 2021 */
select distinct county
from accidents2021
order by county

