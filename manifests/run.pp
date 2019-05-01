# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include simple_website::run
class simple_website::run {

  exec {'Docker run':
        cwd     => '/home/edureka/Downloads/build_repo/simple-php-website',
        command => '/usr/bin/docker run  -it -d -p 8091:8080 simple-php'
  }

}
