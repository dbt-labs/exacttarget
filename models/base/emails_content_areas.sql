{%- set src_table = var('exacttarget:schema') ~ '.email__contentareaids' -%}

select

  _sdc_source_key_id as email_id
, value as content_area_id

from {{src_table}}
