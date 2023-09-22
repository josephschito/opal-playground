<h1 align="left">
  Opal playground <img src="https://secure.gravatar.com/avatar/88298620949a6534d403da2e356c9339?s=420"
  align="center" title="Opal logo by Elia Schito" width="50" height="50" />
</h1>

### Setup
`cd opal-static-template`

`bundle`

`bundle exec rackup`

Visit [`http://localhost:9292`](http://localhost:9292)


### Build
`bin/build`

#### Try your build
`ruby -rwebrick -e 'WEBrick::HTTPServer.new(:Port => 4001, :DocumentRoot => "build").start' &> /dev/null`

Visit [`http://localhost:4001`](http://localhost:4001)
