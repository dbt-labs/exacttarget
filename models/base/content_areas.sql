{%- set src_table = var('exacttarget:schema') ~ '.campaign' -%}

select

{{ fill(src_table,
        ['backgroundcolor',
         'bordercolor',
         'borderwidth',
         'categoryid',
         'cellpadding',
         'cellspacing',
         'content',
         'createddate',
         'customerkey',
         'fontfamily',
         'hasfontsize',
         'id',
         'isblank',
         'isdynamiccontent',
         'islocked',
         'issurvey',
         'key',
         'modifieddate',
         'name',
         'objectid',
         'width']) }}

from {{src_table}}
