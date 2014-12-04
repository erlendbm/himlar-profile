#
#
class profile::admin::profile
{
  include profile::base::base

  $modes = hiera('googleauthenticator::pam::mode::modes', {})
  if $modes {
    create_resources('googleauthenticator::pam::mode', $modes)
  }

}
