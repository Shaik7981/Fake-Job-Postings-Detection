USE solo_project;

## How Many Job Postings Are Real vs. Fake?
SELECT fraudulent, COUNT(*) AS count
FROM Cleaned_data_solo_project
GROUP BY fraudulent;

## Which Job Industries Have the Most Fake Postings?
select industry,count(*) as count_fraud
FROM Cleaned_data_solo_project
where fraudulent=1
group by industry
order by count_fraud  desc
limit 10;

## Which Job Titles Appear Most in Fake Job Postings?
select title,count(*) as count
from Cleaned_data_solo_project
where fraudulent=1
group by title
order by count desc
limit 10;

## Which Countries Have the Most Fake Jobs?
select country,count(*) as count_country
from Cleaned_data_solo_project
where fraudulent=1
group by country
order by count_country desc
limit 10;


## Do Fake Job Postings Use Certain Buzzwords More Often?
SELECT description, COUNT(*) AS count
FROM Cleaned_data_solo_project
WHERE fraudulent = 1
GROUP BY description
ORDER BY count DESC
LIMIT 10;

## Which Companies Have the Most Fake Job Postings?
select company_profile,count(*) as fraud_count
from Cleaned_data_solo_project
where fraudulent=1
group by company_profile
order by fraud_count desc
limit 10;

#  Which job benefits are most common in fake jobs?
select  benefits ,count(*) as fake_count
from Cleaned_data_solo_project
where fraudulent=1
group by benefits
order by fake_count desc
limit 10;

select fraudulent, COUNT(*) as new_companies
from Cleaned_data_solo_project
where company_profile like '%new%' or company_profile like '%startup%'
group by fraudulent;
