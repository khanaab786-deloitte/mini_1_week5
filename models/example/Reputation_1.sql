{{ config(materialized='view') }}

select Id,DisplayName,Reputation

from {{ ref('User')}}

order by Reputation

desc limit 10