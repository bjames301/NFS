class nfs::client {
	include nfs::client::install
	include nfs::client::build
	include nfs::client::service
}
