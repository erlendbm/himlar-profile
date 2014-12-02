#
#
class profile::base::admin
{
  $modes = hiera('googleauthenticator::pam::mode::modes', {})
  if $hieradata {
    create_resources('googleauthenticator::pam::mode', $modes)
  }

}
