# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_simple_website::build

include '::gitclone'

class puppet_simple_website::build {

  file {'/home/edureka/Downloads/build_repo':
        ensure => 'directory',
        mode   => '0777'
  }

  gitclone::repo { 'simple-php-website' :
		source      => 'https://github.com/bhavanashendge/simple-php-website.git',
		destination => '/home/edureka/Downloads/build_repo',
		owner       => 'edureka',
		group       => 'edureka',
  }

  exec {'Docker build':
      cwd     => '/home/edureka/Downloads/build_repo/simple-php-website',
      command => '/usr/bin/docker build -t simple-php .'
  }

}
