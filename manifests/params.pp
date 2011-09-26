class nfs::params (
	
	#This varible is the directory used to build all NFS related config files that need to be concatenated.	
	$build_dir = '/etc/puppet/build',
	$packages = ['nfs-utils','portmap']
) {

	#Directory used for autofs configuration.(example auto.master auto.home)
	$nfs_build_dir = "${build_dir}/nfs"


	#Directory used for nfs configuration. All entries in /etc/exports are generated here.
	$nfs_server_build_dir = "${build_dir}/nfs_server"
}
