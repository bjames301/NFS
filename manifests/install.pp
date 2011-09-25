class nfs::install {
      include nfs::params
        package{ $nfs::params::packages:
                ensure  => present,
        }


}
