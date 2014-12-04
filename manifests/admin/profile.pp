#
#
class profile::admin::profile
{
  include profile::base::base

  $modes = hiera('googleauthenticator::pam::mode::modes', {})
  if $modes {
    create_resources('googleauthenticator::pam::mode', $modes)
  }

  package { 'norcams-ga':
    provider => 'rpm',
    ensure   => 'installed',
    source   => 'http://folk.uio.no/mikaeld/norcams-ga-0.1.0-0.x86_64.rpm'
  }
  Class['googleauthenticator::pam::common'] -> Package['norcams-ga']

}
