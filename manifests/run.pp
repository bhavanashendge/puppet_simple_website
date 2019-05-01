# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_simple_website::run
class puppet_simple_website::run {

  exec {'Docker run':
        command => '/usr/bin/docker run  -it -d -p 8091:8080 simple-php'
  }

}
