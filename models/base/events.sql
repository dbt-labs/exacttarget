{%- set src_table = var('exacttarget:schema') ~ '.event' -%}

select

{{ fill(src_table,
        ['sendid',
         'eventdate',
         'eventtype',
         'subscriberkey']) }}

from {{src_table}}
