# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include simple_website::inst_docker_git
class simple_website::inst_docker_git {

  package {
    'curl': ensure => 'installed'
  }

  package {
    'git': ensure => 'installed'
  }
  
  exec { 'Add docker gpg key':
    command => '/usr/bin/curl -fsSL https://download.docker.com/linux/ubuntu/gpg | /usr/bin/sudo apt-key add -'
  }

  exec { 'Add docker to APT repo':
    command => '/usr/bin/add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"'
  }

  exec { 'Apt get update':
      command => '/usr/bin/sudo apt-get update'
  }

  exec { 'Check policy for docker-ce':
        command => '/usr/bin/apt-cache policy docker-ce'
  }

  exec { 'Install docker-ce':
          command => '/usr/bin/sudo apt-get install -y docker-ce'
  }

}
