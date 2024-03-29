class ssh::params {
    case $operatingsystem {
      Solaris: {
        $ssh_package_name = 'openssh'
        $ssh_service_config = '/etc/ssh/sshd_config'
        $ssh_service_name = 'sshd'
      }
      /(Ubuntu|Debian|)/: {
        $ssh_package_name = 'openssh-server'
        $ssh_service_config = '/etc/ssh/sshd_config'
        $ssh_service_name = 'sshd'
    
      }
  
      /(RedHat|CentOS|Fedora)/: {
        $ssh_service_config = '/etc/ssh/sshd_config'
        $ssh_service_name = 'sshd'
        $ssh_package_name = 'openssh-server'
      }
    }
}
