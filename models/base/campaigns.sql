{%- set src_table = var('exacttarget:schema') ~ '.campaign' -%}

select

{{ fill(src_table,
        ['id',
         'createddate',
         'modifieddate',
         'name',
         'campaigncode',
         'color']) }}

from {{src_table}}
