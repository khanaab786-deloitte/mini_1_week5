
select u.Id, u.DisplayName, u.Reputation, count(*) 
as num_questions from {{ ref('User') }} u inner join {{ ref('Post') }} p
on u.id=p.OwnerUserId where p.PostTypeId = 1 and u.Reputation > 75000
group by u.id, u.displayName, u.reputation

