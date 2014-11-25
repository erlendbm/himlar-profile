#
# Puppet modules :
#   mod 'saz/ssh'
#   mod 'saz/sudo'
#   mod 'puppetlabs/ntp'
#
class profile::base {
  include profile::base_repositories_el

  include ::ssh::server
  include ::ntp
  include ::sudo
  include ::sudo::configs
}
