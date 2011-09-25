#

class nfs::client::install {
	include nfs::install
	$packages = ['autofs']	
	
	package{ $packages:
		ensure	=> present,
	}
	

}







