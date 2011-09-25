
class nfs::client::service {

	
	service{ 'autofs':
                ensure     => running,
                enable     => true,
                hasstatus  => true,
                hasrestart => true,
                require    => Class["nfs::client::install"],
        }	
	

}







