# laravel-aws-cloud9

## Running Services

Once you install the homestead utility in this bundle, you can start, stop, reload, and
get the status of all the services with the following command:

```
homestead [CMD]
```

## MySQL

To access the local mysql instance simply run the mysql command: 

```
sudo mysql
```

## Postgres

To access the local postgres instance simply run the mysql command:

```
psql -U postgres
```

To able your local laravel application to communicate with the postgres server,
access the psql command line and then execute the following command:

```
postgres=# \password postgres
```

Enter your desired password twice and you should be good to go. We recommend using
"secret" which is a common laravel default for development environments.
