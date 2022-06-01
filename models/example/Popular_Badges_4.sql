select Name, count(UserId) as cnt from
{{ ref('Badge') }}
group by Name
order by cnt desc limit 10