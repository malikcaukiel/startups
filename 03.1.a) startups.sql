/* Project Details:
Trends in Startups
Howdy! It’s your first day as a TechCrunch reporter. Your first task is to write an article on the rising trends in the startup world.

To get you started with your research, your boss emailed you a project.sqlite file that contains a table called startups. It is a portfolio of some of the biggest names in the industry.

Write queries with aggregate functions to retrieve some interesting insights about these companies. */
-- ############################################################################################
/* -- Questions --
1. Getting started, take a look at the startups table:
SELECT * FROM startups;
How many columns are there?

2. Calculate the total number of companies in the table.

3. We want to know the total value of all companies in this table.
Calculate this by getting the SUM() of the valuation column.

4. What is the highest amount raised by a startup?
Return the maximum amount of money raised.

5. Edit the query so that it returns the maximum amount of money raised, during ‘Seed’ stage.

6. In what year was the oldest company on the list founded?

7. Let's find out the valuations among different sectors:
Return the average valuation.

8. Return the average valuation, in each category.

9. Return the average valuation, in each category.
Round the averages to two decimal places.

10. Return the average valuation, in each category.
Round the averages to two decimal places.
Lastly, order the list from highest averages to lowest.

11. What are the most competitive markets?
First, return the name of each category with the total number of companies that belong to it.

12. Next, filter the result to only include categories that have more than three companies in them.
What are the most competitive markets?

13. Let's see if there's a difference in startups sizes among different locations:
What is the average size of a startup in each location?

14. What is the average size of a startup in each location, with average sizes above 500?
*/
-- 1. 
SELECT * FROM startups LIMIT 10;
-- ############################################################################################
-- 2.
SELECT COUNT(*)
FROM startups;
-- ############################################################################################
-- 3.
SELECT SUM(valuation)
FROM startups;
-- ############################################################################################
-- 4.
SELECT MAX(raised)
FROM startups;
-- ############################################################################################
-- 5.
SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';
-- ############################################################################################
-- 6
SELECT MIN(founded)
FROM startups;
-- ############################################################################################
-- 7
SELECT AVG(valuation)
FROM startups;
-- ############################################################################################
-- 8
SELECT category, AVG(valuation)
FROM startups
GROUP BY category;
-- ############################################################################################
-- 9
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;
-- ############################################################################################
-- 10.
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category
ORDER BY 2 DESC;
-- ############################################################################################
-- 11.
SELECT category, COUNT(*)
FROM startups
GROUP BY category;
-- ############################################################################################
-- 12. (Code is ok)
SELECT category, COUNT(*) FROM startups
GROUP BY category
HAVING COUNT(*) > 3;
-- ############################################################################################
-- 13
SELECT location, AVG(employees)
FROM startups
GROUP BY location;
-- ############################################################################################
-- 14
SELECT location, AVG(employees) FROM startups
GROUP BY location HAVING AVG(employees) > 500;
-- ############################################################################################