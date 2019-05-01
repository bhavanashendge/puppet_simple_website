# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include simple_website
class simple_website {

    class {'simple_website::inst_docker_git':}
    class {'simple_website::build':}
    class {'simple_website::run':}

}
