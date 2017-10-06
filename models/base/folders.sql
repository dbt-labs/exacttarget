{%- set src_table = var('exacttarget:schema') ~ '.folder' -%}

select

{{ fill(src_table,
        ['allowchildren',
         'contenttype',
         'createddate',
         'customerkey',
         'description',
         'id',
         'modifieddate',
         'name',
         'objectid',
         'parentfolder',
         'partnerproperties',
         'type']) }}

from {{src_table}}
