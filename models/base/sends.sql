{%- set src_table = var('exacttarget:schema') ~ '.send' -%}

select

{{ fill(src_table,
        ['createddate',
         'emailid',
         'emailname',
         'fromaddress',
         'fromname',
         'id',
         'isalwayson',
         'ismultipart',
         'modifieddate',
         'senddate',
         'status',
         'subject']) }}

from {{src_table}}
