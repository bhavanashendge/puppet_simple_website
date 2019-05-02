# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_simple_website::build

class puppet_simple_website::build {

  file {'/home/edureka/Downloads/build_repo':
        ensure => 'absent'
  }

  exec {'git clone':
      cwd     => '/home/edureka/Downloads',
      command => '/usr/bin/git clone https://github.com/bhavanashendge/simple-php-website.git /home/edureka/Downloads/build_repo'
  }

  exec {'Docker build':
      cwd     => '/home/edureka/Downloads/build_repo',
      command => '/usr/bin/docker build -t simple-php .'
  }

}
