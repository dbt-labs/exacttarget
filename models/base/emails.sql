{%- set src_table = var('exacttarget:schema') ~ '.email' -%}

select

{{ fill(src_table,
        ['categoryid',
         'characterset',
         'clonedfromid',
         'contentcheckstatus',
         'createddate',
         'customerkey',
         'emailtype',
         'hasdynamicsubjectline',
         'htmlbody',
         'id',
         'isactive',
         'ishtmlpaste',
         'modifieddate',
         'name',
         'objectid',
         'preheader',
         'status',
         'subject',
         'synctextwithhtml',
         'textbody',
         '__additionalemailattribute1',
         '__additionalemailattribute2',
         '__additionalemailattribute3',
         '__additionalemailattribute4',
         '__additionalemailattribute5' ]) }}

from {{src_table}}
