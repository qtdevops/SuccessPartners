class apache::uninstall {

   $pack_name = $facts['os']['family'] ? {
        'RedHat' => 'http',
        'Debian' => 'apache2',
   }
   package { $pack_name:
       ensure => 'purged',
       
   }


}