
##################################################################################
#Coments Section
#Wed Jun 22 08:16:11 EDT 2011
#Brandon James


#################################################################################


define nfs::client::config(
 	$autofsfilepath,
	$t,
	$mastermountpath,
	$autofilename,
	$randommountpath,
	$perms,
	$nfsserverhostname	
){ 
 
	file {"/etc/auto.${autofilename}":
                content => template('nfs/auto.random.erb'),
                ensure  => present,
                require => Class["nfs::client::install"],
        }
        


	file { "${nfs::params::nfs_build_dir}/${name}":
		ensure   => present,
		content  => template('nfs/auto.master.erb'),
		notify   => Exec['rebuild-auto.master'],
		before   => Exec['rebuild-auto.master'],
	}



}
################################################################################
