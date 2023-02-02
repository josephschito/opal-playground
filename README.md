### Development
`cd opal-static-template`

`bundle`

`bundle exec rackup`

### Build
`bundle exec rake`

### Try your build
`bundle exec ruby -rwebrick -e 'WEBrick::HTTPServer.new(:Port => 4001, :DocumentRoot => "./build").start' &> /dev/null`

visit `http://localhost:4001`
