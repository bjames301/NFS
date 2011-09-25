
class nfs::server::service {

	
	service{ 'portmap':
		ensure	   => running,
		enable     => true,
		hasstatus  => true,
		hasrestart => true,
		require    => Class["nfs::server::install"],
	}
        service{ 'nfslock':
                ensure     => running,
                enable     => true,
                hasstatus  => true,
                hasrestart => true,
                require    => Service["portmap"],
        }
	service{ 'nfs':
                ensure     => running,
                enable     => true,
                hasstatus  => true,
                hasrestart => true,
                require    => Service['nfslock'],
        }	
	

}







