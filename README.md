# fluent-plugin-file-with-header

[Fluentd](https://fluentd.org/) output plugin to do something.

Output plugin omit file with header.

## Installation
Use RubyGems.

### RubyGems

```
$ gem install fluent-plugin-file-with-header
```

### Bundler

Add following line to your Gemfile:

```ruby
gem "fluent-plugin-file-with-header"
```

And then execute:

```
$ bundle
```

## Configuration

You can generate configuration template:

```
$ fluent-plugin-config-format output file-with-header
```



```
   <match pattern>
     @type file_with_header
     headers time,host,req_id,user
     path /logs
     <format>
       @type csv
       fields time,host,rq_id,user
     </format>
   </match>
```

Output file like below.

```
time,host,req_id,user
"2013/02/28 12:00:00","192.168.0.1","111","-"
```


## Copyright

* Copyright(c) 2020- pomcho555
* License
  * Apache License, Version 2.0
