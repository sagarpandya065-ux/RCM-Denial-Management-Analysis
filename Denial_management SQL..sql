use claim_rcm;
create database Denial_project;
use denial_project;
select * from denial_management;
select claim_id,Payer,denial_code,Denied_Amount 
from denial_management;
select claim_id,Payer,denial_code,Denied_Amount 
from denial_management where payer="Tricare";
select claim_id,Payer,denial_code,Denied_Amount 
from denial_management where denied_amount > 10000;
select claim_id,Payer,denial_code,Denied_Amount 
from denial_management where denied_amount < 5000;
select payer, sum(denied_amount)as Total_denied_amount from denial_management group by payer order by total_denied_amount desc;
select denial_reason,
 Count(*) as Denial_claims
 from denial_management 
 group by denial_reason order by denial_claims desc; 
 select payer, avg(denied_amount) as avg_denied_amount from denial_management group by payer order by avg_denied_amount desc;
 select payer, Sum(denied_amount) as Total_denied_AMount from denial_management group by payer having total_denied_amount > 500000 order by Total_denied_AMount desc;
  select payer, avg(denied_amount) as avg_denied_amount,
  Sum(denied_amount) as Total_denied_AMount from denial_management group by payer having total_denied_amount > 500000 and avg_denied_amount > 200000 
  order by Total_denied_AMount desc;
select payer, avg(denied_amount) as avg_denied_amount,
  Sum(denied_amount) as Total_denied_AMount from denial_management group by payer order by total_denied_amount desc;
    select payer, avg(denied_amount) as avg_denied_amount,
    Sum(denied_amount) as Total_denied_AMount from denial_management group by payer having total_denied_amount > 500000 and avg_denied_amount > 20000
    order by Avg_denied_amount desc;
select claim_id,Payer,denied_amount,
case when denied_amount > 50000 then "High"
when denied_amount between 20000 and 50000 then 'Medium'
else 'low' end as denial_category from denial_management;
select 
case when denied_amount > 50000 then "High"
when denied_amount between 20000 and 50000 then 'Medium'
else 'low' end as denial_category, Count(*) as claim_count from denial_management group by denial_category order by claim_count desc ;
select denial_reason, SUm(denied_amount) as Total_denied_amount from denial_management group by denial_reason order by Total_denied_amount desc;
select denial_reason, SUm(denied_amount) as Total_denied_amount from denial_management group by denial_reason order by Total_denied_amount desc limit 1;
select Payer, SUm(denied_amount) as Total_denied_amount from denial_management group by payer order by Total_denied_amount desc limit 3;
select denial_reason, Count(*) as claim_count from denial_management group by denial_reason order by claim_count desc limit 3;
select payer, denial_reason, Count(*) as claim_count, sum(denied_amount) as total_denied_amount from denial_management where Payer='Tricare' group by denial_reason having total_denied_amount > 50000 
 order by total_denied_amount desc Limit 3;
 select payer,  Count(claim_id), sum(denied_amount) as high_value_denial_claims from denial_management where denied_amount > 20000 group by payer order by high_value_denial_claims desc;
 select payer, Count(*) as total_number_of_claims, count(CASE WHEN denied_amount > 20000 THEN 1 END) as high_value_denied_claims,
  SUm(denied_amount) as total_denied_amount from denial_management group by payer
 order by total_denied_amount desc;
select payer, Count(CLaim_id) as Total_claims, Count(Denial_reason) as denied_claims, denied_claims/Total_Claims*100 as denial_rate from denial_management group by payer;
select payer, Count(*) as total_claims, Count(Case when appeal_status = 'WON' then 1 end) as appeal_status_won_claims, COUNT(CASE WHEN appeal_status = 'WON' THEN 1 END) * 100.0 / COUNT(*) AS appeal_win_rate
FROM denial_management
GROUP BY payer;
select denial_reason, count(*) as total_claims, sum(denied_amount) as total_denied_amount, AVg(denied_amount) as Avg_denied_amount from denial_management group by denial_reason;
select denial_reason, count(*) as total_claims, sum(denied_amount) as total_denied_amount from denial_management group by denial_reason order by total_denied_amount desc limit 5;
select Payer, denial_reason, sum(denied_amount) as total_denied_amount from denial_management group by payer,denial_reason order by total_denied_amount desc;
select payer,denial_reason, count(*) as claim_count, sum(denied_amount) as total_denied_amount from denial_management group by payer,denial_reason Having  Total_denied_amount > 100000 
order by Total_denied_Amount desc;
select payer, count(Claim_id) as total_claims, SUm(denied_amount) as total_denied_amount, avg(denied_amount) as Avg_denied_amount, Count(case when denied_amount>50000 then 1 end)
as high_value_denied_claims from denial_management group by payer order by total_denied_amount desc;

select payer, denial_reason, claim_id, denied_amount from denial_management order by denied_amount desc Limit 5;
select claim_id, payer, denied_amount from denial_management where denied_amount > (SELECT AVG(denied_amount)
FROM denial_management) order by denied_amount desc;
sELECT CLAIM_ID,pAYER,dENIED_AMOUNT from denial_management d where denied_amount > (select avg (denied_amount) from denial_management where payer = d.payer) 
order by denied_amount
 desc;
 SELECT payer, SUM(denied_amount) as Total_denied_amount FROM denial_management group by PAYER HAVING tOTAL_denied_amount > (SELECT Avg(tOTAL_DENIED_AMOUNT) fROM (SELECT
payer, SUM(denied_amount) AS total_denied_amount FROM denial_management GROUP BY payer) AS payer_totals)
ORDER BY total_denied_amount DESC;
