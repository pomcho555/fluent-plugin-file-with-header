# fluent-plugin-file-with-header

Output plugin omit file with header.
Default [out_file](https://github.com/fluent/fluentd/blob/master/lib/fluent/plugin/out_file.rb) plugin is not able to handle file header.

This is useful plugin when you wanna put the header on csv file or something!

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
