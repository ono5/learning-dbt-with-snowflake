## Create Role

```bash
use role accountadmin;

create role if not exists reporter;
create user if not exists preset
    password='presetPassword123'
    login_name='preset'
    must_change_password=false
    default_warehouse='compute_wh'
    default_role='reporter'
    default_namespace='airbnb.dev'
    comment='Preset user for creating reports';

grant role reporter to user preset;
grant role reporter to role transform;
grant role reporter to role accountadmin;

grant all on warehouse compute_wh to role reporter;
grant usage on database airbnb to role reporter;
grant usage on schema airbnb.dev to role reporter;
```
