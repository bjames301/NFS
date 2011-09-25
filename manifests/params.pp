class nfs::params (
	$build_dir = '/etc/puppet/build',
	$packages = ['nfs-utils','portmap']
) {
	$nfs_build_dir = "${build_dir}/nfs"
}
