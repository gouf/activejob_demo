# Active Job Demo

Database :
* sqlite3
* Redis (sidekiq)

Run on local :

```
bundle install
rake db:migrate
./run_redis.sh # if you have docker environment
sidekiq
rails s
```
