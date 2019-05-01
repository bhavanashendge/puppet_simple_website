# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_simple_website
class puppet_simple_website {

    class {'puppet_simple_website::inst_docker_git':}
    class {'puppet_simple_website::build':}
    class {'puppet_simple_website::run':}

}
