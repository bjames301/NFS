class nfs::server {
	include nfs::server::install
	include nfs::server::service

	Class['nfs::install'] -> Class['nfs::service']
}
