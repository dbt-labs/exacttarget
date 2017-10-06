{%- set src_table = var('exacttarget:schema') ~ '.list_send' -%}

select

{{ fill(src_table,
        ['createddate',
         'customerkey',
         'existingundeliverables',
         'existingunsubscribes',
         'forwardedemails',
         'hardbounces',
         'invalidaddresses',
         'listid',
         'id',
         'missingaddresses',
         'modifieddate',
         'numberdelivered',
         'numbersent',
         'objectid',
         'otherbounces',
         'sendid',
         'softbounces',
         'uniqueclicks',
         'uniqueopens',
         'unsubscribes']) }}

from {{src_table}}
