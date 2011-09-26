class nfs::client {
	include nfs::install
	include nfs::client::install
	include nfs::client::build
	include nfs::client::service
}
