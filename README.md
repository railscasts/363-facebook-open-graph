# RailsCasts Episode #363: Facebook Open Graph

http://railscasts.com/episodes/363-facebook-open-graph

Requires Ruby 1.9.2 or higher.

### Commands used in episode

```
gem install localtunnel
rbenv rehash
localtunnel -k ~/.ssh/id_rsa.pub 3000
rails g delayed_job:active_record
rake db:migrate
rake jobs:work
```

### Commands used in console

```ruby
u = User.last
u.facebook.put_connection("me", "cinematron:review", movie: "http://samples.ogp.me/457069940972565")
```
