class nfs::server {
	include nfs::server::install
	include nfs::server::service

	Class['nfs::server::install'] -> Class['nfs::server::service']
}
