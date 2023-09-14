# Learnin dbt

## ENV Setup

```bash
python3.11 -m venv venv
pip install dbt-snowflake==1.5.0

mkdir ~/.dbt
```

## DBT Setup

```bash
source venv/bin/activate
make init project_name=dbtlearn

$ make init project_name=dbtlearn
dbt init dbtlearn
08:01:22  Running with dbt=1.5.6
Which database would you like to use?
[1] snowflake

(Don't see the one you want? https://docs.getdbt.com/docs/available-adapters)

Enter a number: 1
account (https://<this_value>.snowflakecomputing.com): fmnyybz-cx39284
user (dev username): dbt
[1] password
[2] keypair
[3] sso
Desired authentication type option (enter a number): 1
password (dev password):
role (dev role): transform
warehouse (warehouse name): COMPUTE_WH
database (default database that dbt will build objects in): AIRBNB
schema (default schema that dbt will build objects in): DEV
threads (1 or more) [1]:
08:05:32  Profile dbtlearn written to /Users/hono/.dbt/profiles.yml using target's profile_template.yml and your supplied values. Run 'dbt debug' to validate the connection.
08:05:32
Your new dbt project "dbtlearn" was created!

For more information on how to configure the profiles.yml file,
please consult the dbt documentation here:

  https://docs.getdbt.com/docs/configure-your-profile

One more thing:

Need help? Don't hesitate to reach out to us via GitHub issues or on Slack:

  https://community.getdbt.com/

Happy modeling!
```
