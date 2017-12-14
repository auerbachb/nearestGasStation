# README

* Ruby version
2.4.1

* System dependencies
redis 2.6 +

* Run the test
rspec

* configration
1. install redis
https://redis.io/download
```
$ wget http://download.redis.io/releases/redis-4.0.6.tar.gz
$ tar xzf redis-4.0.6.tar.gz
$ cd redis-4.0.6
$ make
```

2. install rvm and ruby
```
$ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
$ curl -sSL https://get.rvm.io | bash -s stable
rvm install 2.4.1
```

3. install rails
```
gem install rails
```

4. request the goolge map api
https://developers.google.com/places/web-service/

5. config the api keys
edit config file```config/settings/production.yml``` add the google map api
