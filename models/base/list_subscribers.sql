{%- set src_table = var('exacttarget:schema') ~ '.list_subscriber' -%}

select

{{ fill(src_table,
        ['createddate',
         'id',
         'modifieddate',
         'objectid',
         'listid',
         'status',
         'subscriberkey']) }}

from {{src_table}}
