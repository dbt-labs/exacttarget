{%- set src_table = var('exacttarget:schema') ~ '.subscriber' -%}

select

{{ fill(src_table,
        ['createddate',
         'customerkey',
         'emailaddress',
         'emailtypepreference',
         'id',
         'locale',
         'modifieddate',
         'objectid',
         'partnerkey',
         'partnertype',
         'primaryemailaddress',
         'primarysmsaddress',
         'primarysmspublicationstatus',
         'status',
         'subscriberkey',
         'subscribertypedefinition',
         'unsubscribeddate']) }}

from {{src_table}}
