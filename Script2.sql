use wrestlingproject;

select * from laws;

select * from promotion;

select * from promotionspecificlegality;

select * from wrestlerpromotionrelationship;

select * from wrestlers;

select wrestlerName from wrestlers order by  wrestlerName desc; /* Displays the names of the wrestlers in backwards alphabetical order */

select cityName from laws where hardcore = 0 limit 1; /* displays one wrestling promotion where hardcore wrestling is illegal */

select wrestlerID, payForEvent from wrestlerpromotionrelationship /* displays the pay for an event and ID of wrestlers who earned over 60 dollars */
where payForEvent >= 60.00;


select laws.cityID, promotionID from laws join promotionspecificlegality on laws.cityID = promotionspecificlegality.cityID; /* joins the city and promotion IDs using a join on clause */ 

select laws.cityID, promotionID from laws join promotionspecificlegality using(cityID); /* join the city and promotion IDs with the using clause */

select promotion.promotionID, wrestlerID from promotion join wrestlerpromotionrelationship using(promotionID); /* join the promotion ID and wrestlerID using the promotion ID */

