
select p.Body
from {{ref('User')}} u, {{ref('Post')}} p where u.DisplayName like '%nau%' and p.PostTypeId = 1

