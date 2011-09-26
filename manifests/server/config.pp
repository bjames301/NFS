
##################################################################################
#Coments Section
#Wed Jun 22 08:16:11 EDT 2011
#Brandon James


#################################################################################
#Config Section
#
#
define nfs::server::config(
        $exportpath,
        $ipallowed,
        $perms
){ 


         file {"${nfs::params::nfs_server_build_dir}/${name}":
                content => template('nfs/exports.erb'),
                ensure  => present,
                require => Class["nfs::server::install"],
		notify   => [Exec['rebuild-exports'],Service["nfs"]],
                before   => Exec['rebuild-exports'],	
        }
}
################################################################################
