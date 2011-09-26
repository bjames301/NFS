class nfs::server {
	include nfs::install
	include nfs::server::install
	include nfs::server::service
	include nfs::server::build
	Class['nfs::server::install'] -> Class['nfs::server::build'] -> Class['nfs::server::service']
}
