# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_simple_website::run
class puppet_simple_website::run {

  exec {'Docker stop old container if existing':
        command => '/usr/bin/docker stop simple-php-container'
  }
  
  exec {'Docker prune old containers':
        command => '/usr/bin/docker container rm simple-php-container'
  }
  

  exec {'Docker run':
        command => '/usr/bin/docker run  -it -d -p 80:8080 --name simple-php-container simple-php-image'
  }

}
