{%- set src_table = var('exacttarget:schema') ~ '.list' -%}

select

{{ fill(src_table,
        ['category',
         'createddate',
         'id',
         'modifieddate',
         'objectid',
         'listclassification',
         'listname',
         'description'
         'sendclassification',
         'type']) }}

from {{src_table}}
