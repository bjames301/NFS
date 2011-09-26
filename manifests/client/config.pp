
##################################################################################
#Coments Section
#Wed Jun 22 08:16:11 EDT 2011
#Brandon James


#################################################################################


define nfs::client::config(

 #Varibles defined the the file auto.master.
	
	$am_mountpath,
	$amfs_filepath,
	$time_out,
	
#Varibles define in the file auto.x file which specifies the mount point.
	
	$perms,
	$nfs_serverhostname,
	$autofilename,
	$nfss_mountpath
){ 
 
	file {"/etc/auto.${autofilename}":
                content => template('nfs/auto.random.erb'),
                ensure  => present,
                require => Class["nfs::client::install"],
		notify  => Service["autofs"],
        }
        


	file { "${nfs::params::nfs_build_dir}/${name}":
		ensure   => present,
		content  => template('nfs/auto.master.erb'),
		notify   => [Exec['rebuild-auto.master'],Service["autofs"]],
		before   => Exec['rebuild-auto.master'],
	}



}
################################################################################
