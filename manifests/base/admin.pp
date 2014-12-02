#
#
class profile::base::admin
{
  $modes = hiera('googleauthenticator::pam::mode::modes', {})
  if $modes {
    create_resources('googleauthenticator::pam::mode', $modes)
  }

}
