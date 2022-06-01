{{ config(materialized='view') }}

select p.Body

from {{ref('User')}} u join {{ref('Post')}} p

on u.Id = p.OwnerUserId

where u.DisplayName = 'alexandrul' and p.PostTypeId = 1